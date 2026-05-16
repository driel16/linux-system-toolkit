#!/bin/bash
clear
GREEN='\033[0;32m'
NC='\033[0m'
while true
do
    echo ""
    echo "========================================"
    echo -e "${GREEN}Linux System Toolkit${NC}"
    echo "========================================"
    echo "1. System Information"
    echo "2. Network Information"
    echo "3. Service Status"
    echo "4. Security Checks"
    echo "5. Exit"
    echo ""

    read -p "Choose an option: " option

    case $option in
	1) ./scripts/system_info.sh ;;
	2) ./scripts/network_info.sh ;;
	3) ./scripts/service_check.sh ;;
	4) ./scripts/security_check.sh ;;
	5) exit ;;
	*) echo "Invalid option" ;;
    esac
done


