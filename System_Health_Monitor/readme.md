# 🖥️ System Health Monitor

## 📌 Overview
This script monitors basic system health metrics and writes them to a log file.  
It checks:
- CPU usage
- Memory usage
- Disk usage
- Top 5 processes by CPU
- System uptime

## ⚙️ Usage
```bash
chmod +x sys_health_monitor.sh
./sys_health_monitor.sh
cat health.txt
```

## 📋 Features
- Command availability validation
- Timestamped logging
- Comprehensive system metrics
- Error handling for missing commands
- Clean formatted output

## 🛠 Requirements
- Basic Linux utilities: `free`, `df`, `ps`, `awk`, `grep`, `uptime`
- Access to `/proc/stat` for CPU metrics
- Write permissions for log file creation

## 📊 Output Format
The script generates a formatted report in `health.txt` with:
- System uptime in pretty format
- CPU usage percentage
- Memory usage statistics (used/total with percentage)
- Disk usage summary
- Top 5 CPU-consuming processes

## 🔧 Error Handling
The script includes validation for:
- Required command availability
- Log file creation if missing
- Proper error messages for missing dependencies

---

*Note: This script provides basic system monitoring. For continuous monitoring, consider scheduling it with cron or using dedicated monitoring tools.*
