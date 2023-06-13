#!/bin/bash
echo "Enter your dockerhub username: "
read USER
echo "Enter your dockerhub password: "
read PASSWORD

docker login -u ${USER} -p ${PASSWORD}

echo "Enter the repository address you want to build: "
read REPO_BUILD

rm ./repo -rf
mkdir ./repo

git clone ${REPO_BUILD} ./repo

echo "Enter the image name you want to publish: "
read IMAGE_NAME

docker build -t ${USER}/${IMAGE_NAME}:latest ./repo

docker push ${USER}/${IMAGE_NAME}:latest