
---

## 4️⃣ **Bulk User Creation (`bulk_user_create.sh`)**

```markdown
# 👥 Bulk User Creation Script

## 📌 Overview
Reads a CSV file and creates users in bulk.  
For each user, it:
- Creates the user with a home directory
- Sets the password
- Adds the user to groups
- Enforces password expiry policies

## 📂 CSV Format
```csv
username,password,groups
alice,alice123,sudo
bob,bob123,developers
charlie,charlie123,devops
