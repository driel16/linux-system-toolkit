#!/bin/bash

REPORT_DIR="reports"
REPORT_FILE="$REPORT_DIR/system_report.txt"

mkdir -p "$REPORT_DIR"

echo "====================================" > "$REPORT_FILE"
echo "      LINUX SYSTEM REPORT" >> "$REPORT_FILE"
echo "====================================" >> "$REPORT_FILE"
echo "Generated: $(date)" >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "========== HOSTNAME ==========" >> "$REPORT_FILE"
hostname >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "========== UPTIME ==========" >> "$REPORT_FILE"
uptime >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "========== MEMORY USAGE ==========" >> "$REPORT_FILE"
free -h >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "========== DISK USAGE ==========" >> "$REPORT_FILE"
df -h >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "========== NETWORK INFORMATION ==========" >> "$REPORT_FILE"
ip addr show >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "========== TOP CPU PROCESSES ==========" >> "$REPORT_FILE"
ps aux --sort=-%cpu | head >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "========== TOP MEMORY PROCESSES ==========" >> "$REPORT_FILE"
ps aux --sort=-%mem | head >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "========== RUNNING SERVICES ==========" >> "$REPORT_FILE"
systemctl list-units --type=service --state=running >> "$REPORT_FILE"

echo ""
echo "Report generated successfully."
echo "Saved to: $REPORT_FILE"
