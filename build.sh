#!/bin/bash
# Variable for Docker Hub ID
DOCKER_ID="sooryas20"

echo "Building Docker Image..."
docker build -t $DOCKER_ID/devops-build:latest .
