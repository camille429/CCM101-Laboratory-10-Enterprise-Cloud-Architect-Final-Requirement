# Enterprise Cloud Architect – Containerized Web Infrastructure

**Author:** Charmaine Dulay Salvador  
**Server Hostname:** `enterprisecloud` (`Ubuntu 26.04.1 LTS`)  

## Project Overview
This project demonstrates the deployment, hardening, and automation of an enterprise-grade containerized web stack using **Docker**, **Docker Compose**, **UFW Firewall**, and **Linux Cron Jobs** on an Ubuntu Server virtual machine.

## Architecture Summary
* **Host & Virtualization:** Windows Host communicating with Ubuntu Server via VirtualBox Host-Only (`192.168.56.101`) and NAT (`10.0.2.15`) networking.
* **Container Orchestration:** Docker Compose managing `enterprise-wordpress` (port `8080:80`) and `enterprise-mysql` (`MySQL 8.4`) with persistent storage (`db_data`).
* **Security & Hardening:** UFW Firewall restricting inbound traffic strictly to SSH (`22/tcp`) and HTTP application traffic (`8080/tcp`).
* **Automated Disaster Recovery:** Daily `mysqldump` backups scheduled at 2:00 AM via `crontab` and `automation-script.sh`.

## Repository Contents
* `docker-compose.yml` – Multi-container WordPress and MySQL service definition.
* `automation-script.sh` – Automated database backup script.
* `operational-manual.md` – Standard operating procedures for container management and recovery.
* `final-reflection.md` – Engineering lessons learned during deployment and troubleshooting.
* `architecture-diagram/` – System topology diagram.
