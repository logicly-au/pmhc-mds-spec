#!/usr/bin/env perl

use strict;
use Getopt::Long;
use Excel::Writer::XLSX;
use Text::CSV_XS;
use Tie::IxHash;

use constant usage => <<'EOT'
csv2xlsx.pl [options] [example_file_directory]

Automatically generate Excel XLSX file from CSV files stored in <example_file_directory>.

  --help                  Show this text

EOT
    ;
our ($example_dir, $help, $delete, $context);

my $version = "4-0";

GetOptions(
  'help|?|h'  => \$help,
  'delete'    => \$delete,
  'context=s' => \$context
) or do { print usage; exit 1; };

if ($help) { print usage; exit 0; }

# Now, we can also specify the spec and version on the command line.
$example_dir ||= shift;

# Check usage...
unless (defined($example_dir)) {
    print usage;
    exit 1;
}

my %csvfiles;
my $t = tie( %csvfiles, 'Tie::IxHash' );
my $workbook;
if ($delete) {
    $context = 'combined-delete';
    %csvfiles = (
        'Metadata'                      => "$example_dir/$context/metadata.csv",
        'Organisations'                 => "$example_dir/$context/organisations.csv",
        'Clients'                       => "$example_dir/$context/clients.csv",
        'Intakes'                       => "$example_dir/$context/intakes.csv",
        'IAR-DST'                       => "$example_dir/$context/iar-dst.csv",
        'Episodes'                      => "$example_dir/$context/episodes.csv",
        'Intake Episodes'               => "$example_dir/$context/intake-episodes.csv",
        'Collection Occasions'          => "$example_dir/$context/collection-occasions.csv",
        'K10+'                          => "$example_dir/$context/k10p.csv",
        'K5'                            => "$example_dir/$context/k5.csv",
        'SDQ'                           => "$example_dir/$context/sdq.csv",
        'Service Contacts'              => "$example_dir/$context/service-contacts.csv",
        'Service Contact Practitioners' => "$example_dir/$context/service-contact-practitioners.csv",
        'Practitioners'                 => "$example_dir/$context/practitioners.csv"
    );
} else {
  if ( $context eq "intake" ) {
      %csvfiles = (
          'Metadata'      => "$example_dir/$context/metadata.csv",
          'Organisations' => "$example_dir/$context/organisations.csv",
          'Clients'       => "$example_dir/$context/clients.csv",
          'Intakes'       => "$example_dir/$context/intakes.csv",
          'IAR-DST'       => "$example_dir/$context/iar-dst.csv"
      );
  } elsif ( $context eq "treatment" ) {
      %csvfiles = (
          'Metadata'                      => "$example_dir/$context/metadata.csv",
          'Organisations'                 => "$example_dir/$context/organisations.csv",
          'Clients'                       => "$example_dir/$context/clients.csv",
          'Episodes'                      => "$example_dir/$context/episodes.csv",
          'Intake Episodes'               => "$example_dir/$context/intake-episodes.csv",
          'Collection Occasions'          => "$example_dir/$context/collection-occasions.csv",
          'K10+'                          => "$example_dir/$context/k10p.csv",
          'K5'                            => "$example_dir/$context/k5.csv",
          'SDQ'                           => "$example_dir/$context/sdq.csv",
          'Service Contacts'              => "$example_dir/$context/service-contacts.csv",
          'Service Contact Practitioners' => "$example_dir/$context/service-contact-practitioners.csv",
          'Practitioners'                 => "$example_dir/$context/practitioners.csv"
      );
  } elsif ( $context eq "combined" ) {
      %csvfiles = (
          'Metadata'                      => "$example_dir/$context/metadata.csv",
          'Organisations'                 => "$example_dir/$context/organisations.csv",
          'Clients'                       => "$example_dir/$context/clients.csv",
          'Intakes'                       => "$example_dir/$context/intakes.csv",
          'IAR-DST'                       => "$example_dir/$context/iar-dst.csv",
          'Episodes'                      => "$example_dir/$context/episodes.csv",
          'Intake Episodes'               => "$example_dir/$context/intake-episodes.csv",
          'Collection Occasions'          => "$example_dir/$context/collection-occasions.csv",
          'K10+'                          => "$example_dir/$context/k10p.csv",
          'K5'                            => "$example_dir/$context/k5.csv",
          'SDQ'                           => "$example_dir/$context/sdq.csv",
          'Service Contacts'              => "$example_dir/$context/service-contacts.csv",
          'Service Contact Practitioners' => "$example_dir/$context/service-contact-practitioners.csv",
          'Practitioners'                 => "$example_dir/$context/practitioners.csv"
      );
  } else {
    print "Unknown context: $context. Context must be  one of [intake, treatment, combined]\n";
    print usage; exit 0;
  }

  # Create a new Excel workbook


}

my $filename = "PMHC-$version-$context.xlsx";
$workbook  = Excel::Writer::XLSX->new( "$example_dir/$filename" );

# Create a new CSV parsing object
my $csv = Text::CSV_XS->new;

foreach my $file ( keys( %csvfiles ) ) {
  # Add a worksheet
  my $worksheet = $workbook->add_worksheet( $file );

  # Open the Comma Separated Variable file
  print STDERR "CSV file: " . $csvfiles{$file} . "\n";
  open( CSVFILE, $csvfiles{$file} ) or die "$ARGV[0]: $!";

  # Row and column are zero indexed
  my $row = 0;

  while (<CSVFILE>) {
    if ( $csv->parse($_) ) {
      my @Fld = $csv->fields;

      my $col = 0;
      foreach my $token (@Fld) {
          $worksheet->write( $row, $col, $token );
          $col++;
      }
      $row++;
    } else {
      my $err = $csv->error_input;
      print "Text::CSV_XS parse() failed on argument: ", $err, "\n";
    }
  }
}

exit( 0 );
