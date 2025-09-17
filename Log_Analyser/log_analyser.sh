#!/bin/bash

# ====================================
# Automated Log Analyzer
# Author: Vishnu
# Date: $(date +"%d-%m-%Y")
# ====================================

LOG_FILE="log.txt"
AUTH_LOG="/var/log/auth.log"

# Create log file if not exists
if [ ! -f "$LOG_FILE" ]; then
    touch "$LOG_FILE"
fi

{
echo ""
echo "===================================="
echo "📊 Automated Log Analyzer - $(date)"
echo "===================================="

# =======================
# SSH Failed Logins
# =======================
echo "❌ SSH Failed Login Attempts:"
ssh_failed=$(grep -ai "Failed password" "$AUTH_LOG" | wc -l)
echo "Total SSH Failed Logins: $ssh_failed"
grep -ai "Failed password" "$AUTH_LOG" | tail -n 5
echo "------------------------------------"

# =======================
# SSH Successful Logins
# =======================
echo "✅ SSH Successful Logins:"
ssh_success=$(grep -ai "Accepted password" "$AUTH_LOG" | wc -l)
echo "Total SSH Successful Logins: $ssh_success"
grep -ai "Accepted password" "$AUTH_LOG" | tail -n 5
echo "------------------------------------"

# =======================
# GUI/LightDM Failed Logins
# =======================
echo "🖥️ GUI (LightDM) Failed Logins:"
gui_failed=$(grep -ai "pam_succeed_if.*nopasswdlogin" "$AUTH_LOG" | wc -l)
echo "Total GUI Failed Logins: $gui_failed"
grep -ai "pam_succeed_if.*nopasswdlogin" "$AUTH_LOG" | tail -n 5
echo "------------------------------------"

# =======================
# General Auth Errors
# =======================
echo "⚠️ Other Auth Errors / Refusals:"
errors=$(grep -ai "error" "$AUTH_LOG" | wc -l)
echo "Total Auth Errors: $errors"
grep -ai "error" "$AUTH_LOG" | tail -n 5
echo "===================================="

} >> "$LOG_FILE"

