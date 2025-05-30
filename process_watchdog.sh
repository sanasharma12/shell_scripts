#!/bin/bash
PROCESS_NAME="nginx"
if ! pgrep "$PROCESS_NAME" > /dev/null; then
echo "$PROCESS_NAME is not running. Restarting..."
sudo systemctl start "$PROCESS_NAME"
else
echo "$PROCESS_NAME is running."
fi
