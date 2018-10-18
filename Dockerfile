# install nginx alpine version
# https://hub.docker.com/_/ruby/
FROM ruby:alpine

LABEL version="0.1"
LABEL description="Image with tools like grunt, yarn, webpack, bundle..."
LABEL maintainer="roger.castaneda@bonzzu.com"

RUN \
  apk add --update && \
  apk add ruby-dev && \
  apk add libffi-dev && \
  apk add build-base && \
  gem install --no-rdoc --no-ri compass bundler && \
  apk add nodejs && \
  npm install -g yarn && \
  yarn global add webpack && \
  yarn global add webpack-cli && \
  yarn global add grunt && \
  mkdir -p /app

# Change directory so that our commands run inside this new directory
WORKDIR /app