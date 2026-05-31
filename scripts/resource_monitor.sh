#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}===== SYSTEM RESOURCE MONITOR =====${NC}"

echo -e "${GREEN}CPU & LOAD:${NC}"
uptime

echo ""

echo -e "${GREEN}MEMORY USAGE:${NC}"
free -h

echo ""

echo -e "${GREEN}DISK USAGE:${NC}"
df -h

echo ""

echo -e "${GREEN}TOP CPU PROCESSES:${NC}"
ps aux --sort=-%cpu | head

echo ""

echo -e "${GREEN}TOP MEMORY PROCESSES:${NC}"
ps aux --sort=-%mem | head
