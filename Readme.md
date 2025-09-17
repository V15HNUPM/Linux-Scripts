# ⚡ Linux Automation Scripts

A collection of beginner-friendly Linux shell scripts that automate common system administration tasks.  
Each project is organized into its own folder with a script and a detailed README.

---

## 📂 Project Structure

```
.
├── Backup/                 # Automated Backup Script
├── Log_Analyser/          # Authentication Log Analyzer
├── Service_Checker/       # Website/Service Uptime Checker
├── System_Health_Monitor/ # System Health Monitoring
└── User_Management/       # Bulk User Creation from CSV
```

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

## 📝 Usage
1. Clone this repository:
```bash
git clone <repository-url>
cd linux-automation-scripts
```

2. Navigate to the desired script directory
3. Make the script executable:
```bash
chmod +x script-name.sh
```

4. Run the script (some may require sudo):
```bash
./script-name.sh
# or
sudo ./script-name.sh
```



## 📜 License
This project is open source and available under the [MIT License](LICENSE).
