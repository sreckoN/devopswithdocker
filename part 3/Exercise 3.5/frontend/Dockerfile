FROM node:16

WORKDIR /usr/src/app

COPY . .

RUN apt update

RUN npm install

RUN npm run build

RUN npm install -g serve

EXPOSE 5000

RUN useradd -m appuser

RUN chown appuser .

USER appuser

ENTRYPOINT [ "serve", "-s", "-l", "5000", "build"]