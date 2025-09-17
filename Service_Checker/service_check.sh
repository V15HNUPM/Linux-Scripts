#!/bin/bash

# =========================================
# Service Uptime Checker
# Author : Vishnu
# Date   : $(date +"%d-%m-%Y")
# Task   : Ping services and log downtime
# =========================================

LOG_FILE="service_log.txt"

# Create log file if not exists
if [ ! -f "$LOG_FILE" ]; then
    touch "$LOG_FILE"
fi

# List of services/websites to check
SERVICES=("google.com" "github.com" )

{
echo ""
echo "===================================="
echo "📊 Service Checker - $(date)"
echo "===================================="

for site in "${SERVICES[@]}"; do
    if ping -c 2 -W 2 "$site" > /dev/null 2>&1; then
        echo "✅ $site is UP"
    else
        echo "❌ $site is DOWN"
        echo "$(date): $site is DOWN" >> "$LOG_FILE"
    fi
done

echo "===================================="
} >> "$LOG_FILE"

