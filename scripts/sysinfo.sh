# sysinfo.sh – A basic bash script to display user, uptime, disk, and memory info
# Created as part of my 16-week cybersecurity roadmap


#!/bin/bash

echo "System Information Script"
echo "==========================="
echo "User: $USER"
echo "Date: $(date)"
echo "Uptime: $(uptime -p)"
echo "Current Directory: $(pwd)"
echo "Disk Usage:"
df -h /
echo "Memory Usage:"
free -h
