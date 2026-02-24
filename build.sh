#!/bin/bash
echo "Building Docker image..."
docker build -t devops-build:latest .
echo "Build complete!"
