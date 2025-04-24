#!/data/data/com.termux/files/usr/bin/bash
DATE=$(date +%F_%H-%M)
BACKUP_DIR=$HOME/library_backups
mkdir -p $BACKUP_DIR
mariadb-dump -u root library > $BACKUP_DIR/library_backup_$DATE.sql