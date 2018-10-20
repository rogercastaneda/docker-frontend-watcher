FROM node:10.12.0-alpine

LABEL version="0.3"
LABEL description="Image with tools like grunt, yarn, webpack, bundle, gulp..."
LABEL maintainer="rogercastanedag@gmail..com"

RUN \
  apk add --update && \
  apk add ruby ruby-dev && \
  apk add libffi-dev && \
  apk add build-base && \
  gem install --no-rdoc --no-ri compass bundler && \
  apk add nodejs git && \
  npm install -g yarn gulp && \
  yarn global add webpack && \
  yarn global add webpack-cli && \
  yarn global add grunt && \
  mkdir -p /app

# Change directory so that our commands run inside this new directory
WORKDIR /app