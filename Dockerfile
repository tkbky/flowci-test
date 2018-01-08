FROM ruby:2.4.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /flowci-test
WORKDIR /flowci-test
COPY Gemfile /flowci-test/Gemfile
COPY Gemfile.lock /flowci-test/Gemfile.lock
RUN bundle install
COPY . /flowci-test
