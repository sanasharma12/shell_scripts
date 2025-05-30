#!/bin/bash
SERVICES=("nginx" "docker" "ssh")
for service in "${SERVICES[@]}"; do
systemctl is-active --quiet "$service" && status="Running" || status="Not Running"
echo "$service: $status"
done

