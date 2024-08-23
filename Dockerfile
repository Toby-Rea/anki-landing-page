FROM node:latest

COPY . /anki-landing-page

WORKDIR /anki-landing-page

#TODO change this to 8080 for a prod build
EXPOSE 4173

RUN npm install -g bun

#TODO change this to production build
CMD make preview