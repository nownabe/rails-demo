FROM ruby:2.5.1-alpine3.7

RUN apk add --update --no-cache \
  bash \
  build-base \
  libxml2-dev \
  libxslt-dev \
  mariadb-dev \
  nodejs \
  tzdata

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock /usr/src/app/
RUN bundle install
