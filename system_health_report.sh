#!/bin/bash
REPORT="/tmp/system_health_$(date +%F).txt"

echo "System Health Report - $ (date)" > $REPORT
echo "" >> $REPORT

echo "CPU Load:" >> $REPORT
uptime >> $REPORT
echo "" >> $REPORT

echo "Memory Usage:" >> $REPORT
free -h >> $REPORT
echo "" >> $REPORT

echo "Disk Usage:" >> $REPORT
free -h >> $REPORT
echo "" >> $Report

echo "Top Processes:" >> $REPORT
ps aux --sort=-%mem | head -n 10 >> $REPORT

mail -s "Daily System Health Report" youremail@example.com < $REPORT
