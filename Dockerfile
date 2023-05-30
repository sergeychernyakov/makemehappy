FROM ruby:3.1.0

# Инсталлируем Node.js и Yarn
RUN apt-get update -qq && apt-get install -y nodejs yarn

WORKDIR /makemehappy

COPY Gemfile /makemehappy/Gemfile
COPY Gemfile.lock /makemehappy/Gemfile.lock

RUN bundle install
COPY . /makemehappy

# Скрипт запуска
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Запускаем Rails
CMD ["rails", "server", "-b", "0.0.0.0"]
