FROM ruby:3.2-alpine

RUN apk update && apk add --no-cache build-base

WORKDIR /app

RUN apk add --no-cache ca-certificates libcurl libxml2 libxslt postgresql-libs \
      tzdata chromium nodejs npm yarn shared-mime-info gcompat neovim

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install

COPY . .

ENTRYPOINT ["bundle", "exec", "./bin/text-to-speech"]
