FROM ruby:2.7.3
# rails consoleの中で日本語入力を設定
ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y build-essential nodejs mariadb-client
RUN mkdir /api
WORKDIR /api
COPY ./Gemfile /api/Gemfile
COPY ./Gemfile.lock /api/Gemfile.lock
RUN bundle install
COPY . /api

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE  3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]