#!/bin/bash
IMAGE_NAME=$1
TAG=$2
docker pull $IMAGE_NAME:$TAG
docker stop react-container || true
docker rm react-container || true
docker run -d --name react-container -p 80:80 $IMAGE_NAME:$TAG