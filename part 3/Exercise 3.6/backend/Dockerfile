FROM golang:1.16

WORKDIR /usr/src/app

COPY . .

RUN go build && go test ./...

ENV REQUEST_ORIGIN http://localhost

EXPOSE 8080

ENTRYPOINT ["./server"]