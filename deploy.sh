#!/bin/bash

echo "Stopping old container (if exists)..."

docker stop react-container 2>/dev/null
docker rm react-container 2>/dev/null

echo "Deploying new container..."

docker run -d \
  --name react-container \
  -p 80:80 \
  react-prod-app

echo "Deployment completed ✅"
