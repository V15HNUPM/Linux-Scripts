#!/bin/bash

# =========================================
# Bulk User Creation Script
# Author : Vishnu
# Date   : $(date +"%d-%m-%Y")
# Task   : User Management Automation
# =========================================

CSV_FILE="$1"

show_help() {
    echo "Usage: sudo $0 <users.csv>"
    echo "CSV Format: username,password,groups"
    echo "remember to run with sudo permission"
    exit 1
}

# Check arguments
if [ $# -ne 1 ]; then
    show_help
fi

# Check if file exists
if [ ! -f "$CSV_FILE" ]; then
    echo "❌ Error: CSV file '$CSV_FILE' not found!"
    exit 1
fi

# Process CSV
while IFS=',' read -r username password groups; do
    # Skip empty lines or headers
    [[ "$username" == "username" || -z "$username" ]] && continue

    echo "➡️ Creating user: $username"

    # Create user with home directory
    if id "$username" &>/dev/null; then
        echo "⚠️ User '$username' already exists, skipping..."
        continue
    fi

    useradd -m -s /bin/bash "$username"
    echo "$username:$password" | chpasswd

    # Add to groups
    if [ -n "$groups" ]; then
        usermod -aG "$groups" "$username"
    fi

    # Enforce password policies
    chage -d 0 "$username"             # Force password change on first login
    chage -M 90 "$username"            # Password expires after 90 days
    chage -W 7 "$username"             # Warn 7 days before expiry

    echo "✅ User '$username' created and configured."
    echo "-------------------------------------"

done < "$CSV_FILE"

echo "🎉 Bulk user creation completed!"

