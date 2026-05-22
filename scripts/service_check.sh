#!/bin/bash

clear

GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo "============================"
echo -e "${BLUE}SERVICE STATUS${NC}"
echo "============================"

echo ""
echo "${YELLOW} Checking NGINX Service...${NC}"

if systemctl is-active --quiet nginx
then
    echo -e "${GREEN}NGINX is running${NC}"
else
    echo -e "${RED}NGINX is NOT running${NC}"
fi

echo ""

echo "${YELLOW} Checking SSH Service...${NC}"

if systemctl is-active --quiet nginx
then
    echo -e "${GREEN}SSH is running${NC}"
else
    echo -e "${RED}SSH is NOT running${NC}"
fi

echo ""
echo -e "${YELLOW}NGINX Port Check:${NC}"

ss -tulnp | grep :80

echo ""
echo -e "${BLUE}SSH Port Check:${NC}"

ss -tulnp | grep :22
