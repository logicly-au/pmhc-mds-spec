# Specify the ruby version is use only once
FROM ruby:3.1 AS ruby

FROM ruby AS gembuilder

RUN git clone https://github.com/strategicdata/csvlint.rb.git /build
WORKDIR build

RUN gem build csvlint.gemspec


FROM ruby

# copy spec tables + types to /spec
COPY table/ /spec/table
COPY type/ /spec/type
ADD metadata.json /spec
COPY --from=gembuilder /build/csvlint-1.0.0.2.gem /spec/

WORKDIR /spec

# Install csvlint gem + dependencies
ENV LANG C.UTF-8
RUN gem install ./csvlint-1.0.0.2.gem

CMD ["csvlint", "--dump_errors", "--schema=metadata.json"]
