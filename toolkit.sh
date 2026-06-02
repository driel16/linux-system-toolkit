#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

while true
do
    clear

    echo -e "${BLUE}"
    echo "================================================="
    echo "         LINUX SYSTEM TOOLKIT v1.0"
    echo "================================================="
    echo -e "${NC}"

    echo -e "${GREEN}[ System Administration ]${NC}"
    echo "1.  System Information"
    echo "2.  Resource Monitoring"
    echo "3.  Health Dashboard"
    echo "4.  Health Score"

    echo ""
    echo -e "${GREEN}[ Networking ]${NC}"
    echo "5.  Network Information"
    echo "6.  Network Scan (Nmap)"
    echo "7.  Packet Monitoring"

    echo ""
    echo -e "${GREEN}[ Services & Security ]${NC}"
    echo "8.  Service Status"
    echo "9.  Security Checks"
    echo "10. Firewall Status"

    echo ""
    echo -e "${GREEN}[ Logs & Reporting ]${NC}"
    echo "11. Log Monitoring"
    echo "12. Log Management"
    echo "13. Generate System Report"

    echo ""
    echo -e "${GREEN}[ Backup & Recovery ]${NC}"
    echo "14. Backup System"
    echo "15. Restore Backup"

    echo ""
    echo -e "${GREEN}[ Maintenance ]${NC}"
    echo "16. Cleanup Logs"

    echo ""
    echo "0. Exit"
    echo "================================================="

    read -p "Choose an option: " option

    case $option in

        1) ./scripts/system_info.sh ;;
        2) ./scripts/resource_monitor.sh ;;
        3) ./scripts/health_dashboard.sh ;;
        4) ./scripts/health_score.sh ;;

        5) ./scripts/network_info.sh ;;
        6) ./scripts/network_scan.sh ;;
        7) ./scripts/packet_monitor.sh ;;

        8) ./scripts/service_check.sh ;;
        9) ./scripts/security_check.sh ;;
        10) ./scripts/firewall_check.sh ;;

        11) ./scripts/log_monitor.sh ;;
        12) ./scripts/log_manager.sh ;;
        13) ./scripts/generate_report.sh ;;

        14) ./scripts/backup.sh ;;
        15) ./scripts/restore.sh ;;

        16) ./scripts/cleanup.sh ;;

        0)
            echo -e "${YELLOW}Thank You! Goodbye!${NC}"
            exit
            ;;

        *)
            echo -e "${RED}Invalid option!${NC}"
            sleep 2
            ;;
    esac

    echo ""
    read -p "Press Enter to continue..."
done
