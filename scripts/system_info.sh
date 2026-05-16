#!/bin/bash

clear

GREEN='\033[0;32m'
NC='\033[0m'
RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'

echo "========================="
echo -e "${GREEN}SYSTEM INFORMATION${NC}"
echo "========================="

echo -e "${GREEN}Hostname:${NC} $(hostname)"
echo -e "${GREEN}Current User:${NC} $(whoami)"

echo ""
echo -e "${YELLOW}System Uptime:${NC}"
uptime

echo ""
echo "${YELLOW}Memory Usage:${NC}"
free -h

echo ""
echo "${YELLOW}Disk Usage:${NC}"
df -h

