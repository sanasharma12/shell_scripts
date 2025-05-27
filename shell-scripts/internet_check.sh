#!/bin/bash
HOST="8.8.8.8"
ping -c 4 $HOST > /dev/null
if [ $? -eq 0 ]; then
echo "Internet is working!"
else
echo "No Internet connection"
fi
