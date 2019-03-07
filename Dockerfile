FROM ruby:slim-stretch
RUN apt-get update
RUN apt-get install -y build-essential patch ruby-dev zlib1g-dev liblzma-dev libsqlite3-dev sqlite3 nodejs
COPY . /cars/
WORKDIR /cars/
RUN bundle install
RUN rails db:migrate
CMD ["rails","s"]