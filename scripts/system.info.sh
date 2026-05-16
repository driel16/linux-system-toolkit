#!/bin/bash

echo "========================="
echo " SYSTEM INFORMATION"
echo "========================="

echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"

echo ""
echo "Uptime:"
uptime

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

