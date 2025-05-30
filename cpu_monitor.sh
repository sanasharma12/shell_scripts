#!/bin/bash
echo "Top 5 CPU-consuming processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
