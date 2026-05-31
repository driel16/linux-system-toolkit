#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}===== LOG MANAGER =====${NC}"

echo -e "${GREEN}Current Log Size:${NC}"
du -sh logs/

echo ""

echo -e "${GREEN}Available Log Files:${NC}"
ls -lh logs/
