FROM oven/bun:alpine

RUN apk add make

COPY . /anki-landing-page

WORKDIR /anki-landing-page