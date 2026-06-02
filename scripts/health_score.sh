#!/bin/bash

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

SCORE=100

# Disk Usage Check
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$DISK_USAGE" -gt 80 ]; then
    SCORE=$((SCORE-20))
fi

# Memory Usage Check
MEMORY_USAGE=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')

if [ "$MEMORY_USAGE" -gt 80 ]; then
    SCORE=$((SCORE-20))
fi

# SSH Service Check
if ! systemctl is-active --quiet ssh; then
    SCORE=$((SCORE-10))
fi

echo "=================================="
echo "      SYSTEM HEALTH SCORE"
echo "=================================="

if [ "$SCORE" -ge 90 ]; then
    echo -e "${GREEN}Health Score: $SCORE%${NC}"
    echo "System Status: Excellent"
elif [ "$SCORE" -ge 70 ]; then
    echo -e "${YELLOW}Health Score: $SCORE%${NC}"
    echo "System Status: Good"
else
    echo -e "${RED}Health Score: $SCORE%${NC}"
    echo "System Status: Needs Attention"
fi

echo ""
echo "Disk Usage: $DISK_USAGE%"
echo "Memory Usage: $MEMORY_USAGE%"
