FROM node:10-alpine

LABEL version="0.3"
LABEL description="Image with tools like grunt, yarn, webpack, bundle, gulp..."
LABEL maintainer="rogercastanedag@gmail..com"

RUN \
  apk add --update && \
  apk add ruby ruby-dev && \
  apk add libffi-dev && \
  apk add build-base && \
  gem install compass bundler && \
  apk add nodejs git && \
  yarn global add gulp grunt grunt-cli && \
  yarn global add webpack && \
  yarn global add webpack-cli && \
  yarn global add grunt && \
  mkdir -p /app

# Change directory so that our commands run inside this new directory
WORKDIR /app