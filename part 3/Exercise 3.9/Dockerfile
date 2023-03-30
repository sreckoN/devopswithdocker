FROM golang:1.16-alpine AS build-env
WORKDIR /usr/src/app

COPY . .
RUN apk add --no-cache gcc libc-dev && \ 
    go build -o server && \
    go test ./... && \
    adduser -S appuser && \
    chown appuser .


FROM scratch
WORKDIR /app

COPY --from=build-env /usr/src/app/server .

ENV REQUEST_ORIGIN http://localhost
EXPOSE 8080
USER appuser
ENTRYPOINT ["./server"]