FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get install -y postgresql-client
COPY .inputrc /root/.inputrc
RUN mkdir /rails
WORKDIR /rails
COPY Gemfile /rails/Gemfile
COPY Gemfile.lock /rails/Gemfile.lock
RUN bundle install --without development test
COPY . /rails
EXPOSE 3000
CMD ["bin/rails", "server"]
