# 🌐 Service Uptime Checker

## 📌 Overview
Monitors website/service availability by pinging them.  
If a service is **down**, logs the downtime event into a file with timestamps.

## 📂 Services to Monitor
By default monitors:
- google.com
- github.com

## ⚙️ Usage
```bash
chmod +x service_checker.sh
./service_checker.sh
cat service_uptime.log
```

## 📋 Features
- Multi-service simultaneous monitoring
- Configurable check intervals
- Email/SMS alerts (optional)
- Response time tracking
- Uptime percentage calculation
- Custom service list support

## ⚡ Quick Setup
1. Make the script executable:
```bash
chmod +x service_checker.sh
```

2. Edit the services list (optional):
```bash
# Edit the SERVICES array in the script
SERVICES=("google.com" "github.com" "your-domain.com")
```

3. Run continuously:
```bash
./service_checker.sh
```

4. Run as background service:
```bash
nohup ./service_checker.sh > monitor.log 2>&1 &
```

## 📊 Output Includes
- Timestamp of each check
- Service status (UP/DOWN)
- Response time metrics
- Total downtime duration
- Uptime percentage statistics
- Incident reports with timestamps

## 🛠 Requirements
- `ping` utility
- Internet connection
- `mail` or `curl` (for email/webhook notifications)
- `bc` (for response time calculations)

## 🔧 Configuration
Customize the script by modifying:
- Check interval (default: 60 seconds)
- Timeout threshold (default: 5 seconds)
- Notification methods
- Log file location
- Service endpoints

## 📈 Monitoring Options
- ICMP ping checks
- HTTP status code verification
- TCP port availability
- Custom health check endpoints

---

*Note: For production use, consider setting up this script as a systemd service for automatic restart and better logging capabilities.*
