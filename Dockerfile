FROM ruby:2.6.0-alpine
RUN apk update && apk add build-base nodejs postgresql-dev git libsodium libsodium-dev libffi-dev tzdata
RUN mkdir -p /todo-api
WORKDIR /todo-api
COPY Gemfile Gemfile.lock ./
RUN bundle install
ADD . /todo-api
CMD bundle exec rake db:migrate db:seed & bundle exec rails s -p 3000 -b '0.0.0.0'
