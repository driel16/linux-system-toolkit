#!/bin/bash

clear

GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo "=============================="
echo -e "${BLUE}SECURITY CHECKS${NC}"
echo "=============================="

echo ""
echo -e "${YELLOW}Firewall status:${NC}"
sudo ufw status

echo ""
echo -e "${YELLOW}Failed Login Attempts:${NC}"
FAILED_LOGINS=$(sudo grep "Failed" /var/log/auth.log | wc -l)

if [ $FAILED_LOGINS -gt 0 ]
then
    echo -e "${RED}Failed Login Attempts Found${NC}"
else
    echo -e "${GREEN}No Failed Login Attempts Found${NC}"
fi 

echo ""
echo -e "${YELLOW}World-Writable Files:${NC}"

find /home -type f -perm -002
