#!/bin/bash
echo "System Information Report"
echo "=========================="
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "Logged in users:"
who
echo "Disk Usage:"
df -h | grep -E '^/dev/'

