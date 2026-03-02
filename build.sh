#!/bin/bash

echo "Building Docker image..."

docker build -t react-prod-app .

echo "Build completed ✅"
