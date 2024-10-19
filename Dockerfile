FROM oven/bun:alpine

RUN apk add make

COPY . /anki-landing-page

WORKDIR /anki-landing-page

#TODO change this to 8080 for a prod build
EXPOSE 4173
