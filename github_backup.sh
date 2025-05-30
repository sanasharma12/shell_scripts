#!/bin/bash

GITHUB_USER="your-username"
BACKUP_DIR="./github_backup_$ (date +%F)"

mkdir -p $BACKUP_DIR
cd $BACKUP_DIR

curl -s "https://api.github.com/users/$GITHUB_USER/repos?per_page=100" | jq -r '.[].clone_url' | \
while read repo; do
    git clone "$repo"
done

cd ..
zip -r "${BACKUP_DIR}.zip" "$BACKUP_DIR"
echo "Backup completed: ${BACKUP_DIR}.zip"
