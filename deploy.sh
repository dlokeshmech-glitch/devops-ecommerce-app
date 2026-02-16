#!/bin/bash
DOCKER_ID="sooryas20"
REPO_NAME="devops-build-dev" # This will be dynamic in our final pipeline

echo "Stopping existing containers..."
docker stop project3-app || true
docker rm project3-app || true

echo "Deploying new version to Port 80..."
docker pull $DOCKER_ID/$REPO_NAME:latest
docker run -d --name project3-app -p 80:80 $DOCKER_ID/$REPO_NAME:latest
