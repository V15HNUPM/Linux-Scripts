#!/bin/bash

###################################
#                                 #
# Author : Vishnu                 #
# Date   : 17/09/2025             #
# Task   : System Health Monitor  #
#                                 #
###################################

LOG_FILE="health.txt"

# Function to check if a command exists
check_command() {
    command -v "$1" >/dev/null 2>&1 || {
        echo "Error: $1 command not found. Please install it." >> "$LOG_FILE"
        exit 1
    }
}

# Ensure required commands exist
for cmd in free df ps awk grep uptime; do
    check_command "$cmd"
done

# If log file doesn't exist, create it
if [ ! -f "$LOG_FILE" ]; then
    touch "$LOG_FILE"
fi

{
echo ""
echo "===================================="
echo "📊 System Health Report - $(date)"
echo "===================================="

# Uptime
echo "🕒 Uptime:"
uptime -p
echo "------------------------------------"

# CPU Usage
echo "⚙️ CPU Usage:"
cpu_usage=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}')
echo "$cpu_usage"
echo "------------------------------------"

# Memory Usage
echo "💾 Memory Usage:"
free -h | awk 'NR==2{printf "Used: %s / Total: %s (%.2f%%)\n", $3,$2,$3*100/$2 }'
echo "------------------------------------"

# Disk Usage
echo "📂 Disk Usage:"
df -h --total | grep 'total' | awk '{print "Used: "$3 " / Total: "$2 " (" $5 " used)"}'
echo "------------------------------------"

# Top 5 Processes by CPU
echo "🔥 Top 5 Processes by CPU:"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6
echo "===================================="

} >> "$LOG_FILE"

