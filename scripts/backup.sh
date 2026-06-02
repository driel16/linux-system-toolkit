#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}===== BACKUP SYSTEM =====${NC}"

BACKUP_DIR="$HOME/backups"
SOURCE_DIR="$HOME/important_files"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p "$BACKUP_DIR"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory does not exist: $SOURCE_DIR"
    exit 1
fi

tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" "$SOURCE_DIR"

echo -e "${GREEN}Backup completed successfully.${NC}"
echo "Backup saved to: $BACKUP_DIR/backup_$DATE.tar.gz"
