```markdown
# ⚡ Linux Automation Scripts

A collection of beginner-friendly Linux shell scripts that automate common system administration tasks.  
Each project is organized into its own folder with a script and a detailed README.

---

## 📂 Project Structure

```

.
├── Backup/                 # Automated Backup Script
├── Log\_Analyser/           # Authentication Log Analyzer
├── Service\_Checker/        # Website/Service Uptime Checker
├── System\_Health\_Monitor/  # System Health Monitoring
└── User\_Management/        # Bulk User Creation from CSV

````

---

## 🚀 Scripts Overview

### 🔹 [System Health Monitor](System_Health_Monitor/readme.md)
Monitors CPU, memory, disk usage, top processes, and uptime.  
Outputs results into a log file for quick analysis.

### 🔹 [Log Analyser](Log_Analyser/readme.md)
Parses authentication logs (`/var/log/auth.log`) to detect:  
- Failed login attempts  
- Successful logins  
- SSH errors/refusals  

### 🔹 [Backup](Backup/readme.md)
Creates timestamped backups of files:  
- Copies given file to current directory  
- Adds a timestamped header  
- Compresses into `.zip`

### 🔹 [User Management](User_Management/readme.md)
Bulk-creates users from a CSV file with fields:  
`username,password,groups`  
- Creates user, sets password, adds to groups  
- Enforces password expiry policies  

### 🔹 [Service Checker](Service_Checker/readme.md)
Checks uptime of websites/services by pinging them.  
Logs downtime events with timestamps.

---

## 🛠 Requirements
- Linux environment (WSL, Ubuntu, Debian, etc.)  
- Basic utilities: `bash`, `awk`, `grep`, `ps`, `df`, `free`, `ping`, `zip`  
- Root privileges for user management and log analyzer scripts  

---
