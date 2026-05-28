#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}===== PACKET CAPTURE =====${NC}"
echo -e "${GREEN}Press 'Ctrl + C' to stop${NC}"
sudo tcpdump -i eth0 -c 10


