
---

## 2️⃣ **Automated Log Analyzer (`log_analyser.sh`)**

```markdown
# 📜 Automated Log Analyzer

## 📌 Overview
Parses system authentication logs (`/var/log/auth.log` or `/var/log/secure`)  
and generates a summary of:
- Failed login attempts
- Successful logins
- SSH errors/refusals

## ⚙️ Usage
```bash
chmod +x log_analyser.sh
sudo ./log_analyser.sh
cat log.txt
