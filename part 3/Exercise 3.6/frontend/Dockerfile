FROM node:16

WORKDIR /usr/src/app

COPY . .

RUN apt update && npm install && npm run build && npm install -g serve

ENV REACT_APP_BACKEND_URL http://localhost/api

EXPOSE 5000

ENTRYPOINT [ "serve", "-s", "-l", "5000", "build"]