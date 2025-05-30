#!/bin/bash
LOG_DIR="/var/log"
ARCHIVE_DIR="$HOME/log_archives"
mkdir -p "$ARCHIVE_DIR"
find "$LOG_DIR" -name "*.log" -mtime +7 -exec gzip {} \; -exec mv{}.gz "$ARCHIVE_DIR" \;
echo "old log files archived to $ARCHIVE_DIR"

