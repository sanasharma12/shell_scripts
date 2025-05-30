#!/bin/bash

THRESHOLD=80
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
if [ $USAGE -gt $THRESHOLD ];
then
echo "Warning : Disk space usage is above ${THRESHOLD}%!"
else
echo "Disk space is under control."
fi

