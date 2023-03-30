FROM docker

RUN apk update

RUN apk add git

RUN apk add bash

WORKDIR /app1

COPY script.sh .

RUN chmod +x ./script.sh

RUN mkdir ./app

#ENV PATH=/usr/local/bin/

ENTRYPOINT [ "/bin/bash", "/app1/script.sh" ]