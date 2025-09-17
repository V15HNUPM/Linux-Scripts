⚡ Linux Automation Scripts
A collection of beginner-friendly Linux shell scripts designed to automate common system administration tasks. Each script is organized in its own folder with a dedicated script file and a detailed README.md for easy setup and usage.

📂 Project Structure
.
├── Backup/                    # 📦 Automated file backup with timestamp and compression
├── Log_Analyser/              # 🔍 Analyzes authentication logs for security insights
├── Service_Checker/           # 🌐 Monitors website/service uptime with logging
├── System_Health_Monitor/     # 📊 Tracks CPU, memory, disk usage, and system uptime
└── User_Management/           # 👤 Bulk user creation and management from CSV


🚀 Scripts Overview
🔹 System Health Monitor
📊 Monitors system performance metrics:

CPU usage
Memory usage
Disk usage
Top resource-consuming processes
System uptimeOutput: Logs results to a file for quick analysis.

🔹 Log Analyser
🔍 Parses /var/log/auth.log to detect:

Failed login attempts
Successful logins
SSH connection errors or refusalsOutput: Summarized report of security-related events.

🔹 Backup
📦 Creates timestamped backups of specified files:

Copies files to the current directory
Adds a timestamped header
Compresses backups into .zip format

🔹 User Management
👤 Automates bulk user creation from a CSV file with fields:username,password,groups

Creates users and sets passwords
Assigns users to specified groups
Enforces password expiry policies

🔹 Service Checker
🌐 Monitors website or service uptime:

Pings specified services/websites
Logs downtime events with timestampsOutput: Detailed uptime/downtime log.


🛠 Requirements
To run these scripts, ensure you have:

A Linux environment (e.g., Ubuntu, Debian, WSL)
Basic utilities: bash, awk, grep, ps, df, free, ping, zip
Root privileges for User Management and Log Analyser scripts


📚 Getting Started

Clone the repository:
git clone <repository-url>
cd linux-automation-scripts


Navigate to a script's folder:
cd <script-folder>


Read the script's README for specific setup and usage instructions:
cat README.md


Run the script:
bash <script-name>.sh




📜 License
This project is licensed under the MIT License. See the LICENSE file for details.
