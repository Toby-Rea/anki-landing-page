FROM node:latest

COPY . /anki-landing-page

WORKDIR /anki-landing-page

# EXPOSE 4173

RUN npm install -g bun

#TODO change this to production build
CMD make preview