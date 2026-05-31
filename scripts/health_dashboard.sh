#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${BLUE}"
echo "====================================="
echo "     LINUX SYSTEM HEALTH DASHBOARD"
echo "====================================="
echo -e "${NC}"

echo -e "${GREEN}Hostname:${NC}"
hostname

echo -e "${GREEN}Uptime:${NC}"
uptime

echo -e "${GREEN}Memory Usage:${NC}"
free -h

echo -e "${GREEN}Disk Usage:${NC}"
df -h /

echo -e "${GREEN}Top CPU Processes:${NC}"
ps aux --sort=-%cpu | head -5

echo -e "${GREEN}Firewall Status:${NC}"
sudo ufw status

echo -e "${GREEN}Network Information:${NC}"
ip addr show | grep inet
