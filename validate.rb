#!/usr/bin/env ruby_executable_hooks

require 'csvlint/cli'
require 'pp'
require 'json'

class PMHC < Csvlint::Cli

  attr_accessor :results

  include Csvlint::ErrorCollector

  def validate
    v = verify()

    if v == true
      puts "Data is valid"
    else
      results = "{\"results\": [" + @results.join(",") + "]}"
      json_results = JSON.parse(results)

      json_results["results"].each do |result|
        # Only report errors for data files, not specification files
        if result["validation"]["file"] =~ /data/
          if result["validation"]["state"] == "invalid"
            puts result["validation"]["file"] + " is invalid."
            pp result["validation"]["errors"]
          end

          if result["validation"]["warnings"].length > 0
            puts result["validation"]["file"] + " has warnings."
            pp result["validation"]["warnings"]
          end
        end
      end

      # Annoyingly csvlint includes errors for foreign key references on the
      # final file to be processed
      last_result = json_results["results"].last
      if last_result["validation"]["state"] == "invalid"
        last_result["validation"]["errors"].each do |error|
          if error["type"] == "unmatched_foreign_key_reference"
            pp error
          end
        end
      end
    end
  end

  private
    def verify(source = nil)
      valid = true
      @results = []
      schema_file = "pmhc-metadata.json"
      @schema = get_schema(schema_file)
      valid &= fetch_schema_tables(@schema, {})

      return valid
    end

    def fetch_schema_tables(schema, options)
      valid = true
      unless schema.instance_of? Csvlint::Csvw::TableGroup
        return_error "No CSV data to validate."
      end
      schema.tables.keys.each do |source|
        begin
          source = source.sub("file:","")
          source = File.new( source )
        rescue Errno::ENOENT
          return_error "#{source} not found"
        end unless source =~ /^http(s)?/
        valid &= validate_csv(source, schema, options[:dump], nil)
      end

      return valid
    end

    def validate_csv(source, schema, dump, json)
      if source.class == String
        csv = source
      elsif source.class == File
        csv = source.path
      else
        csv = "CSV"
      end

#      validator = Csvlint::Validator.new( source, {}, schema, { lambda: ->(validator) { validate_pmhc( validator, csv ) } } )
      validator = Csvlint::Validator.new( source, {}, schema, {} )

      # Only do extra pmhc checks on data files, not specification files.
      if csv =~ /data/
        if validator.valid?
          validate_pmhc( validator, csv )
        end
      end

      json = {
        validation: {
          file: csv,
          state: validator.valid? ? "valid" : "invalid",
          errors: validator.errors.map { |v| hashify(v) },
          warnings: validator.warnings.map { |v| hashify(v) },
          info: validator.info_messages.map { |v| hashify(v) },
        }
      }.to_json

      @results.push(json)

      return validator.valid?
    end

    def hashify(error)
      h = {
        type: error.type,
        category: error.category,
        row: error.row,
        col: error.column
      }

      if error.column && @schema && @schema.class == Csvlint::Schema && @schema.fields[error.column - 1] != nil
        field = @schema.fields[error.column - 1]
        h[:header] = field.name
        h[:constraints] = Hash[field.constraints.map {|k,v| [k.underscore, v] }]
      end

      if /#{error.type}/ =~ "unmatched_foreign_key_reference"
        h[:content] = error.content,
        h[:constraints] = Hash[error.constraints.map {|k,v| [k.underscore, v] }]
      end

      h
    end

    def validate_pmhc(validator, csv)
      data = validator.data

      if csv =~ /episodes/ then validate_episodes( validator, data )
      elsif csv =~ /service-contacts/ then validate_service_contacts( validator, data )
      elsif csv =~ /k10p/ then validate_k10p( validator, data )
      elsif csv =~ /k5/ then validate_k5( validator, data )
      elsif csv =~ /sdq/ then validate_sdq( validator, data )
      end
    end

    def validate_episodes(validator, data)
      # Client must consent
      header = data.shift
      client_consent_index = header.index("client_consent")

      current_line = 1
      data.each do |row|
        # Would be nice if this wasn't hard coded. If we could get the value from client-consent.csv
        # Leave this exercise to someone with more Ruby knowldege than me. - JW
        unless row[client_consent_index] == "1"
         validator.build_errors(:invalid_consent, :episode, current_line, client_consent_index, row[client_consent_index])
        end
        current_line += 1
      end

    end

    def validate_service_contacts(validator, data)
      # If Service Contact Participants == Individual Client, Client Participation
      # Indicator must = 1
      header = data.shift
      participation_indicator_index = header.index( "service_contact_participation_indicator" )
      participants_index = header.index( "service_contact_participants" )

      current_line = 1
      data.each do |row|
        if row[participants_index] == "1"
          unless row[participation_indicator_index] == "1"
           validator.build_errors(:invalid_participation_indicator, :service_contact, current_line, participation_indicator_index, row[participation_indicator_index])
          end
        end
        current_line += 1
      end
    end

    def validate_k10p(validator, data)
      measure = "k10p"
      scales = [ "k10p_score" ]
      items = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]

      validate_kessler( validator, data, measure, scales, items )
    end

    def validate_k5( validator, data )
      measure = "k5"
      scales = [ "k5_score" ]
      items = [ 1, 2, 3, 4, 5 ]

      validate_kessler( validator, data, measure, scales, items )
    end

    def validate_kessler(validator, data, measure, scales, items )
      header = data.shift

      current_line = 1
      data.each do |row|
        # Must use either item scores or total scores, not both
        using_item_scores = 0
        for i in items
          item_index = header.index("#{measure}_item#{i}")
          unless row[item_index] == "9"
            using_item_scores = 1
          end
        end

        using_total_scores = 0
        scales.each do |scale|
          item_index = header.index(scale)
          unless row[item_index] == nil
            using_total_scores = 1
            break
          end
        end

        if using_item_scores == 1 and using_total_scores == 1
          validator.build_errors(:item_scores_and_total_scores_used, "#{measure}", current_line, item_index, row[item_index])
        end

        current_line += 1
      end
    end

    def validate_sdq(validator, data)
      versions = {
        "PC101" => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,36,37,38],
        "PC201" => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,28,29,30,31,32,33,34,35],
        "PY101" => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,36,37,38],
        "PY201" => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,28,29,30,31,32,33,34,35],
        "YR101" => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,39,40,41,42],
        "YR201" => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,28,29,30,31,32,33,39,40,41,42]
      }
      sdq_scales = [ "sdq_emotional_symptoms", "sdq_conduct_problem", "sdq_hyperactivity",
                     "sdq_peer_problem", "sdq_prosocial", "sdq_total", "sdq_impact"]

      header = data.shift
      version_index = header.index("sdq_version")

      current_line = 1
      data.each do |row|
        valid_items = versions[row[version_index]]

        # Must use either item scores or total scores, not both
        using_item_scores = 0
        for i in 1..42
          item_index = header.index("sdq_item#{i}")
          if valid_items.include?(i)
            unless row[item_index] == "9"
              using_item_scores = 1
            end
          else
            unless row[item_index] == "9"
              validator.build_errors(:invalid_sdq_item_included, :sdq, current_line, item_index, row[item_index])
            end
          end
        end

        # Must use either item scores or total scores, not both
        using_total_scores = 0
        sdq_scales.each do |scale|
          item_index = header.index(scale)
          unless row[item_index] == nil
            using_total_scores = 1
            break
          end
        end

        if using_item_scores == 1 and using_total_scores == 1
          validator.build_errors(:item_scores_and_total_scores_used, :sdq, current_line, item_index, row[item_index])
        end

        current_line += 1
      end
    end
end

if ARGV == ["help"]
  PMHC.start(["help"])
else
  PMHC.start(ARGV.unshift("validate"))
end
