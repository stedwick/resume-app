FROM ruby:2.5-alpine

COPY .inputrc /root/.inputrc

RUN apk --no-cache add --virtual build-dependencies build-base
RUN apk --no-cache add postgresql-dev libressl-dev tzdata libc6-compat xz-libs
RUN apk --no-cache add nodejs

RUN mkdir /rails
WORKDIR /rails
COPY Gemfile /rails/Gemfile
COPY Gemfile.lock /rails/Gemfile.lock
RUN bundle install --no-cache

RUN apk del build-dependencies

COPY . /rails
EXPOSE 3000

CMD sh -c "rm -f tmp/pids/server.pid && exec bin/rails server -b 0.0.0.0"
