#!/bin/bash
if command -v sensors > /dev/null;then
sensors | grep 'Core' | awk '{print $1, $2, $3, $4}'
else
echo "sensors command not found. please install lm-sesnsors."
fi

