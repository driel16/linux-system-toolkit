#!/bin/bash

clear

GREEN='\033[0;32m'
NC='\033[0m'
RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'

echo "============================"
echo -e "${BLUE}NETWORK INFORMATION${NC}"
echo "============================"

echo ""
echo -e "${GREEN}IP Addresses:${NC}"
ip a

echo ""
echo "${YELLOW}Listening Ports:${NC}"
ss -tulnp

echo ""
echo "${YELLOW}Internet Connectivity Test:${NC}"

if ! command -v nmap &> /dev/null
then
    echo "Nmap is not installed."
    exit 1
fi

if ! command -v tcpdump &> /dev/null
then
    echo "tcpdump is not installed."
    exit 1
fi

if ping -c 2 google.com > /dev/null
then
    echo -e "${GREEN} Internet Connection is WORKING${NC}"
else
    echo -e "${RED} Internet Connection FAILED${NC}"

fi
