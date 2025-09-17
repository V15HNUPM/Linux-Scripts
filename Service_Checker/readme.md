
---

## 5️⃣ **Service Uptime Checker (`service_checker.sh`)**

```markdown
# 🌐 Service Uptime Checker

## 📌 Overview
Monitors website/service availability by pinging them.  
If a service is **down**, logs the downtime event into a file.

## 📂 Services to Monitor
By default:
- google.com
- github.com
- openai.com

## ⚙️ Usage
```bash
chmod +x service_checker.sh
./service_checker.sh
cat service_log.txt
