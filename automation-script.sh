#!/bin/bash
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_DIR="/home/cloudadmin/enterprise-cloud/backups"
mkdir -p "$BACKUP_DIR"
docker exec enterprise-mysql mysqldump -u root -pStrongRootPassword123! wordpress > "$BACKUP_DIR/wordpress_backup_$TIMESTAMP.sql"
echo "[$TIMESTAMP] Backup completed successfully."
