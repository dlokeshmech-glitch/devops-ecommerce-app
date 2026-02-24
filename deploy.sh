#!/bin/bash
echo "Deploying application..."
docker-compose down
docker-compose up -d
echo "Deployment complete! App running on port 80."
