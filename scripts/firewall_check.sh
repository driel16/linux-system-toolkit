#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}===== FIREWALL STATUS =====${NC}"

sudo ufw status verbose
