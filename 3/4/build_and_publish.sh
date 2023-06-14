#!/bin/sh
set -e

mkdir ./repo

git clone https://github.com/$1 ./repo

docker build -t $2:latest ./repo

docker login -u $DOCKER_USER -p $DOCKER_PWD
docker push $2:latest