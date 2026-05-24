#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}===== RECENT SSH LOGS =====${NC}"
journalctl -u ssh -n 10

echo ""
echo -e "${RED}===== FAILED LOGIN ATTEMPTS =====${NC}"
grep "Failed password" /var/log/auth.log

