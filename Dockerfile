FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get install -y postgresql-client
COPY .inputrc /root/.inputrc
RUN mkdir /resume
WORKDIR /resume
COPY Gemfile /resume/Gemfile
COPY Gemfile.lock /resume/Gemfile.lock
RUN bundle install
COPY . /resume
EXPOSE 3000
CMD ["bin/rails", "server"]
