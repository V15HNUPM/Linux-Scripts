
---

## 3️⃣ **Automated Backup (`backup.sh`)**

```markdown
# 💾 Automated Backup Script

## 📌 Overview
Creates a timestamped backup of a given file:
- Copies the file to current directory
- Adds a header with backup timestamp
- Compresses the backup into a `.zip`

## ⚙️ Usage
```bash
chmod +x backup.sh
./backup.sh /path/to/file.txt
