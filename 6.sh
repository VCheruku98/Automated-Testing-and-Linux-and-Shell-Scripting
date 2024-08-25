#!/bin/bash

# setting the directories
SOURCE_DIR="/vcheruku/backup"
BACKUP_DIR="/vcheruku/Developer"
BACKUP_FILE="${BACKUP_DIR}/documents_backup_$(date +%Y%m%d_%H%M%S).tar.gz"

# create the backup directory if not exists
mkdir -p "$BACKUP_DIR"

#compressing the file 
if tar -czvf "$BACKUP_FILE" "$SOURCE_DIR"; then
    echo "Backup successfully created: $BACKUP_FILE"
else
    echo "Error: Failed to create backup."
    exit 1
fi

