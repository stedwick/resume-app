FROM ruby
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get install -y postgresql-client
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY Gemfile-docker /myapp/Gemfile-docker
COPY Gemfile-docker.lock /myapp/Gemfile-docker.lock
RUN bundle install --gemfile Gemfile-docker
VOLUME /usr/local/bundle
VOLUME /myapp
# CMD ["bin/rails", "server"]
