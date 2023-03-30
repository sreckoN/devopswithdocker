FROM node:16-alpine AS build-env
WORKDIR /usr/src/app

COPY . .
RUN apk update && \
    npm install && \
    npm run build


FROM node:16-alpine
EXPOSE 5000
WORKDIR /usr/src/app

RUN npm install -g serve && \
    adduser -S appuser && \
    chown appuser .

USER appuser
COPY --from=build-env /usr/src/app/build /usr/src/app/build
ENV REACT_APP_BACKEND_URL http://localhost/api
CMD [ "serve", "-s", "-l", "5000", "build" ]