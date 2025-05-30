#!/bin/bash
SOURCE_DIR="$HOME/my_data"
BACKUP_DIR="$HOME/backups"
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%F).tar.gz"
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"
echo "Backup completed : $BACKUP_FILE"
