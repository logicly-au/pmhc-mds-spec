FROM ruby:3 as gembuilder

RUN git clone https://github.com/strategicdata/csvlint.rb.git /build
WORKDIR build

RUN gem build csvlint.gemspec


FROM ruby:3

# copy spec tables + types to /spec
COPY table/ /spec/table
COPY type/ /spec/type
ADD metadata.json /spec
COPY --from=gembuilder /build/csvlint-1.0.0.1.gem /spec/

WORKDIR /spec

# Install csvlint gem + dependencies
ENV LANG C.UTF-8
RUN gem install ./csvlint-1.0.0.1.gem

CMD ["csvlint", "--dump_errors", "--schema=metadata.json"]
