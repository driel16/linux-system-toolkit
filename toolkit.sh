#!/bin/bash

echo "========================================"
echo "Linux System Toolkit"
echo "========================================"

echo ""
echo "System Information"
echo "---------------------------"

echo "-Hostname: $(hostname)"
echo "-Current User: $(whoami)"
echo "-Uptime:"
uptime

echo ""
echo "-Memory Usage"
free -h

echo ""
echo "-Disk Usage:"
df -h

echo ""
echo "-Network Information"
echo "---------------------------"

ip a

echo ""
echo "Listening Ports:"
ss -tulnp

echo ""
echo "Internet Connectivity Test"
echo "----------------------------"

ping -c 4 google.com

echo ""
echo "Nginx Status"
echo "----------------------------"

systemctl status nginx --no-pager

echo ""
echo "Firewall Status"
echo "----------------------------"

sudo ufw status
