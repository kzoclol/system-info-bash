#!/bin/bash

echo "System Information Report"

echo "Hostname:"
hostname

echo "Operating System:"
grep PRETTY_NAME /etc/os-release

echo "System Uptime:"
uptime -p

echo "Kernel Version:"
uname -r

echo "CPU Information:"
lscpu | grep "Model Name"

echo "Memory Information:"
free -h

echo "Network Information"
ip addr

echo "Filesystem Usage:"
df -hT

echo "Last 5 errors in system log:"
grep -i error /var/log/syslog | tail -n 5
