# 📜 Automated Log Analyzer

## 📌 Overview
Parses system authentication logs (`/var/log/auth.log` or `/var/log/secure`)  
and generates a summary of:
- Failed login attempts
- Successful logins
- SSH errors/refusals
- Suspicious activity patterns

## ⚙️ Usage
```bash
chmod +x log_analyser.sh
sudo ./log_analyser.sh
cat auth_report.txt
```

## 📋 Features
- Real-time log monitoring capability
- IP address geolocation tracking (optional)
- Alert system for suspicious activities
- Customizable threshold settings
- Multiple log format support (syslog, journalctl, auth.log)

## 📊 Output Includes
- Summary statistics of login attempts
- Top source IP addresses with failed attempts
- Timeline of suspicious activities
- User account login patterns
- Service-specific authentication events

## 🛠 Requirements
- Root privileges for log access
- `grep`, `awk`, `cut` utilities
- Internet connection (for IP geolocation feature)
- `jq` (optional, for JSON output format)

## 🔧 Configuration
Edit the configuration section in the script to:
- Set custom threshold values
- Enable/disable email alerts
- Configure monitoring intervals
- Specify output format (text/JSON/CSV)

---

*Note: Regular log analysis helps identify security threats and unauthorized access attempts. Schedule this script with cron for continuous monitoring.*
