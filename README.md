
# 🚀 **Production-Ready React App Deployment — DevOps CI/CD Pipeline**

---

## 📌 **Project Overview**

This project implements a complete end-to-end DevOps workflow to deploy a production-ready React application using containerization, CI/CD automation, cloud infrastructure, and monitoring. The application is Dockerized and deployed on AWS EC2, while Jenkins automates build, push, and deployment based on branch triggers. Separate Docker Hub repositories are maintained for development and production environments. Monitoring is implemented using Prometheus, Node Exporter, and Grafana to ensure system reliability and application availability.

---

## 🧱 **Architecture Flow**


<center><img width="600" height="850" alt="archidiagram" src="https://github.com/user-attachments/assets/e2fb97d0-73eb-47ad-be69-def44bb8fc5d" /></center>


---

## ⚙️ **Implementation Steps**

### 🔹 **1. Application Setup**

* Cloned React application repository
* Configured production build
* Application served on Port 80 (HTTP)

---

### 🔹 **2. Dockerization**

**Dockerfile**

* Multi-stage build
* Nginx used for serving production files

**Docker Compose**

* Container orchestration for deployment

---

### 🔹 **3. Automation Scripts**

**build.sh**

➡ Builds Docker image

**deploy.sh**

➡ Deploys container to EC2 server

---

### 🔹 **4. Version Control**

* Git CLI used for all operations
* Code pushed to **dev branch**
* `.gitignore` and `.dockerignore` configured
* Branch strategy: Feature → dev → main

---

### 🔹 **5. Docker Hub Repositories**

| Repository | Visibility | Purpose            |
| ---------- | ---------- | ------------------ |
| Dev Repo   | Public     | Development builds |
| Prod Repo  | Private    | Production builds  |

---

### 🔹 **6. Jenkins CI/CD Pipeline**

Configured Jenkins to:

✅ Connect to GitHub
✅ Auto-trigger builds

**Dev Branch Push**

➡ Build image
➡ Push to Docker Hub (dev repo)

**Merge to Main**

➡ Build production image
➡ Push to Docker Hub (prod repo)
➡ Deploy to EC2

---

### 🔹 **7. AWS Deployment**

**EC2 Configuration**

* Instance type: t2.micro
* Application accessible via Port 80

**Security Group Rules**

| Port | Access        |
| ---- | ------------- |
| 80   | Public Access |
| 22   | My IP Only    |
|3000  | My IP Only    |
|9090  | My IP Only    |
|9100  | My IP Only    |

---

## 📊 **Monitoring Setup**

Monitoring implemented using open-source tools:

### 🔸 Prometheus

Collects application and system metrics

### 🔸 Node Exporter

Provides server metrics (CPU, Memory, Disk)

### 🔸 Grafana

Visualizes metrics via dashboards

---

## 🛠 **Monitoring Installation (Scripts)**

Monitoring tools installed using:

* `prometheus.sh`
* `node_exporter.sh`
* `grafana.sh`

```
chmod +x prometheus.sh node_exporter.sh grafana.sh

./prometheus.sh
./node_exporter.sh
./grafana.sh
```

---

## ❤️ **Health Monitoring**

Prometheus monitors:

✔ Application uptime
✔ System performance

Grafana dashboards display:

* CPU usage
* Memory usage
* System load
* Application status

Alerts configured for downtime detection.

---

## 🌐 **Deployment Output**

* Application accessible via EC2 Public IP
* Monitoring dashboards via Grafana

---

## 🧠 **Tools & Technologies**

### 🔧 DevOps

Docker • Docker Compose • Jenkins • Git • GitHub

### ☁️ Cloud

AWS EC2 • Security Groups

### 📊 Monitoring

Prometheus • Node Exporter • Grafana


---

## 🎯 **Conclusion**

This project demonstrates a complete DevOps lifecycle including containerization, automated CI/CD pipelines, secure cloud deployment, and real-time monitoring. By integrating industry-standard tools and best practices, the solution ensures scalability, reliability, and production readiness.





