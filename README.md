# Laravel Docker Setup (PHP 8.3 + PostgreSQL + MinIO + Apache)

This repository provides a **fully containerized** development environment for Laravel using **Docker** and **Docker Compose**. It includes:

✅ **PHP 8.3** with Apache  
✅ **PostgreSQL 17.4-alpine** (database)  
✅ **MinIO (S3-compatible object storage)**  
✅ **Pre-installed PHP extensions for Laravel**  

---

## 🚀 Quick Start Guide

### Install Dependencies
Make sure you have **Docker** and **Docker Compose** installed on your machine:  

- [Download Docker](https://www.docker.com/get-started)  
- [Install Docker Compose](https://docs.docker.com/compose/install/)  

---

### Clone the Repository
```sh
git clone https://github.com/miteshviras/docker-config.git
cd docker-config/
```

### Folder Structure
```
project/
│── docker-compose.yml
│── Dockerfile
│── .env
│── minio-init.sh
```

### Build & Start the Containers
Run the following command to build and start the services in the background:
```sh
docker-compose up -d --build
```
