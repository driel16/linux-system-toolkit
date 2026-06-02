#!/bin/bash

BACKUP_DIR="$HOME/backups"
RESTORE_DIR="$HOME/restore_test"

mkdir -p "$RESTORE_DIR"

LATEST_BACKUP=$(ls -t "$BACKUP_DIR"/*.tar.gz 2>/dev/null | head -1)

if [ -z "$LATEST_BACKUP" ]; then
    echo "No backup files found."
    exit 1
fi

echo "Restoring from: $LATEST_BACKUP"

tar -xzvf "$LATEST_BACKUP" -C "$RESTORE_DIR"

echo "Restore completed."
