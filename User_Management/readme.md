# 👥 Bulk User Creation Script

## 📌 Overview
Reads a CSV file and creates users in bulk.  
For each user, it:
- Creates the user with a home directory
- Sets the password
- Adds the user to specified groups
- Enforces password expiry policies

## 📂 CSV Format
```csv
username,password,groups
alice,alice123,sudo
bob,bob123,developers
charlie,charlie123,devops
```

## ⚙️ Usage
```bash
chmod +x bulk_user_create.sh
sudo ./bulk_user_create.sh users.csv
```

## 📋 Features
- User existence validation
- Home directory creation
- Group assignment
- Password policy enforcement
- Error handling for invalid entries

## 🔒 Security Features
- Forces password change on first login
- Sets password expiry after 90 days
- Provides 7-day warning before password expiry
- Validates user doesn't already exist

## 🛠 Requirements
- Root privileges (sudo)
- CSV file with proper formatting
- Standard Linux user management tools: `useradd`, `chpasswd`, `usermod`, `chage`

## ⚠️ Important Notes
- Run with sudo permissions
- CSV file must have header: `username,password,groups`
- Groups must already exist on the system
- Passwords are set in plaintext in CSV (consider security implications)

## 📝 Example CSV
```csv
username,password,groups
john,johnpass123,sudo,developers
sarah,sarahpass456,developers
mike,mikepass789,devops,sudo
```

## 🔧 Error Handling
The script includes:
- File existence validation
- User duplication check
- Empty line skipping
- Header row detection
- Group validation (will fail if group doesn't exist)

---

*Note: For production use, consider enhancing security by using encrypted passwords or integrating with your organization's identity management system.*
