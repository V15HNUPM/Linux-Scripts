#!/bin/bash

# ====================================
# Automated Backup Script
# Author: Vishnu
# Date: $(date +"%d-%m-%Y")
# ====================================

show_help() {
    echo "Usage: $0 <file_path>"
    echo "Example: $0 /etc/hosts"
}

# Check if no arguments are provided
if [ $# -eq 0 ]; then
    show_help
    exit 1
fi

INPUT_FILE="$1"

# Check if the file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: File '$INPUT_FILE' does not exist!"
    exit 1
fi

# Create backup filename with timestamp
BASENAME=$(basename "$INPUT_FILE")
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="${BASENAME}_backup_${TIMESTAMP}.txt"

# Create backup with timestamp header
{
    echo "===================================="
    echo "📊 Backup created at $(date)"
    echo "===================================="
    cat "$INPUT_FILE"
} > "$BACKUP_FILE"

# Compress the backup file
zip "${BACKUP_FILE}.zip" "$BACKUP_FILE" >/dev/null 2>&1

# Cleanup original .txt (optional, keep only compressed)
rm "$BACKUP_FILE"

echo "✅ Backup completed: ${BACKUP_FILE}.zip"

