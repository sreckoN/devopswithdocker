#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Please provide 2 arguments"
    exit 1
fi

git clone "https://github.com/$1.git" app

cd app

docker build . -t "$2"

docker push "$2"