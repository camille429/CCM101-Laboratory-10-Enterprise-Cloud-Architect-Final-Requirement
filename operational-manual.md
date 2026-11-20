# Operational Manual – EnterpriseCloud Infrastructure

## 1. Remote Access
Connect from the Windows host via SSH:
```bash
ssh cloudadmin@192.168.56.101
```

## 2. Container Lifecycle Management
Navigate to the project directory (`cd ~/enterprise-cloud`):
* **Start services:** `docker compose up -d`
* **Check container status:** `docker compose ps`
* **View logs:** `docker compose logs -f`
* **Stop services:** `docker compose down`

## 3. Firewall Management
Verify active UFW rules:
```bash
sudo ufw status verbose
```

## 4. Backup & Disaster Recovery
* **Manual Backup:** Run `./automation-script.sh` inside `~/enterprise-cloud`.
* **Automated Schedule:** Managed by `crontab -l` (runs daily at 02:00 AM).
* **Restore Database:**
  ```bash
  docker exec -i enterprise-mysql mysql -u root -p<ROOT_PASSWORD> wordpress < backups/<backup_file>.sql
  ```
