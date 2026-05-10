# DevOps Ecommerce Application Deployment

## Project Overview

This project demonstrates a complete DevOps workflow for deploying a React-based ecommerce application using Docker, Jenkins, DockerHub, AWS EC2, and monitoring tools.

The application was containerized using Docker and deployed on an AWS EC2 Ubuntu server. CI/CD automation was configured using Jenkins pipelines for both development and production workflows.

---

# Technologies Used

* Git & GitHub
* Docker
* Docker Compose
* Jenkins
* DockerHub
* AWS EC2 (Ubuntu)
* Netdata Monitoring
* Nginx
* Linux CLI

---

# Repository Structure

```text
build/
 ├── Dockerfile
 ├── build.sh
 ├── deploy.sh
 ├── docker-compose.yml
 ├── static/
 ├── index.html
 └── application files

screenshots/
 ├── jenkins-dashboard.png
 ├── jenkins-pipeline-success.png
 ├── dockerhub-dev.png
 ├── dockerhub-prod.png
 ├── ec2-running.png
 ├── security-group.png
 ├── website-output.png
 └── monitoring-netdata.png
```

---

# Docker Configuration

## Dockerfile

```dockerfile
FROM nginx:alpine
COPY . /usr/share/nginx/html
```

---

# Docker Compose Configuration

```yaml
version: '3'
services:
  ecommerce-app:
    image: lokeshdev7/ecommerce-dev:v1
    ports:
      - "80:80"
```

---

# Build Script

## build.sh

```bash
#!/bin/bash
docker build -t lokeshdev7/ecommerce-dev:v1 ./build
```

---

# Deployment Script

## deploy.sh

```bash
#!/bin/bash
docker run -d -p 80:80 --name ecommerce-container lokeshdev7/ecommerce-dev:v1
```

---

# Version Control Workflow

## Development Branch

* Application files pushed into `dev` branch
* Docker image built from dev branch
* Image pushed to DockerHub dev repository

## Production Branch

* `dev` branch merged into `main`
* Production image pushed to DockerHub production repository

---

# DockerHub Repositories

## Development Repository

```text
lokeshdev7/ecommerce-dev
```

## Production Repository

```text
lokeshdev7/ecommerce-prod
```

---

# Jenkins CI/CD Pipeline

## Jenkins Stages

1. Clone Code
2. Build Docker Image
3. Docker Login
4. Push Docker Image

---

# Jenkins Pipeline Features

* Automatic GitHub integration
* Docker image build automation
* DockerHub image push automation
* Separate workflows for dev and main branches

---

# AWS EC2 Configuration

## EC2 Details

* Instance Type: t2.micro
* OS: Ubuntu 24.04 LTS
* Region: ap-south-1

---

# Security Group Configuration

| Port  | Purpose            |
| ----- | ------------------ |
| 22    | SSH Access         |
| 80    | Ecommerce Website  |
| 8080  | Jenkins            |
| 19999 | Netdata Monitoring |

SSH access was restricted to personal IP address.

---

# Application Deployment

The ecommerce application was deployed using Docker container on AWS EC2.

## Application URL

```text
http://13.200.252.106
```

---

# Monitoring Setup

Netdata monitoring was configured for real-time server and application health monitoring.

## Monitoring Features

* CPU monitoring
* Memory monitoring
* Disk monitoring
* Network monitoring
* Docker container monitoring

## Monitoring URL

```text
http://13.200.252.106:19999
```

---

# Docker Commands Used

## Build Image

```bash
docker build -t lokeshdev7/ecommerce-dev:v1 ./build
```

## Run Container

```bash
docker run -d -p 80:80 --name ecommerce-container ecommerce-app
```

## View Containers

```bash
docker ps
```

---

# Git Commands Used

## Branch Operations

```bash
git checkout dev
git checkout main
git merge dev
git push origin main
```

---

# Jenkins Access

```text
http://13.200.252.106:8080
```

---

# Screenshots Included

* Jenkins Dashboard
* Jenkins Pipeline Success
* DockerHub Repositories
* AWS EC2 Running Instance
* Security Group Configuration
* Ecommerce Website Output
* Netdata Monitoring Dashboard

---

# Final Output

The ecommerce application was successfully:

* Dockerized
* Deployed on AWS EC2
* Integrated with Jenkins CI/CD
* Connected with DockerHub
* Monitored using Netdata
* Managed using Git branching workflow

---

# GitHub Repository

```text
https://github.com/dlokeshmech-glitch/devops-ecommerce-app
```

---

# DockerHub Links

## Dev Repository

```text
https://hub.docker.com/r/lokeshdev7/ecommerce-dev
```

## Prod Repository

```text
https://hub.docker.com/r/lokeshdev7/ecommerce-prod
```
