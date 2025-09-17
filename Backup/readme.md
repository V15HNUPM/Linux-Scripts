# 💾 Automated Backup Script

## 📌 Overview
Creates a timestamped backup of a given file:
- Copies the file to current directory
- Adds a header with backup timestamp
- Compresses the backup into a `.zip` file

## ⚙️ Usage
```bash
chmod +x backup.sh
./backup.sh /path/to/file.txt
```

## 📋 Features
- Timestamped backup files
- Automatic compression to ZIP format
- Preserves original file permissions
- Backup verification

## 🛠 Requirements
- `zip` utility installed
- Write permissions in destination directory

---

*Note: This script is designed for single file backups. For directory backups, consider modifying the script accordingly.*
