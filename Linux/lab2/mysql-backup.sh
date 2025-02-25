#!/bin/bash
# Load vars
source /home/ubuntu/mysql-backup-vars

# Take a backup of all databases
mysqldump -u $USERNAME -p $USERPASSWORD --all-databases > ${BACKUP_PATH}/$BACKUP_FILE

# Compress the backup file
gzip $BACKUP_PATH/$BACKUP_FILE

# Delete backups older than 7 days
find ${BACKUP_PATH}/ -type f -name "*.gz" -mtime +7 -delete

echo "Backup completed: $BACKUP_FILE.gz"
