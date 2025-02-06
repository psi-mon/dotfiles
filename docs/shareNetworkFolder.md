# How to Access a Windows 11 Shared Folder from macOS

This guide will help you set up and access a shared folder hosted on a Windows 11 PC from your macOS device.

## Prerequisites

- Windows 11 PC and macOS computer connected to the same local network
- Admin access to the Windows 11 PC
- Network sharing enabled on Windows 11
- macOS 10.13 or later

## Creating a Dedicated Windows Share User

### 1. Create a New Windows User

1. Press Windows key + R
2. Type `netplwiz` and press Enter
3. Click "Add"
4. Choose "Sign in without a Microsoft account"
5. Select "Local account"
6. Fill in the details:
   - Username (e.g., "sharefile")
   - Password (use a strong password)
   - Password hint (optional)
7. Click "Next" and then "Finish"

### 2. Configure User Permissions

1. Open File Explorer
2. Right-click on the folder you want to share
3. Select "Properties"
4. Go to "Security" tab
5. Click "Edit"
6. Click "Add"
7. Enter the username you just created
8. Click "Check Names" to verify
9. Click "OK"
10. Select the new user and set permissions:
    - For read-only: check "Read" and "Read & Execute"
    - For full access: check "Modify" and "Read & Execute"
11. Click "Apply" and "OK"

### 3. User Account Settings

1. Go to Windows Settings > Accounts
2. Select "Sign-in options"
3. Ensure the account:
   - Cannot use Microsoft Store
   - Has no administrative privileges
   - Has a password that never expires:
     - Open Command Prompt as Administrator
     - Type: `wmic useraccount where "Name='sharefile'" set PasswordExpires=false`

### 4. Restrict User Access

1. Restrict Access to Other Folders:

   - Open File Explorer
   - Right-click on C: drive
   - Select "Properties" > "Security" tab
   - Click "Edit" > "Add"
   - Enter the share username
   - Click "Check Names" and "OK"
   - Select the user and DENY these permissions:
     - List folder contents
     - Read
     - Write
   - Click "Apply" and "OK"
   - Click "Yes" to confirm

2. Allow Access to Shared Folder Only:

   - Navigate to the shared folder
   - Right-click > "Properties" > "Security"
   - Click "Edit" > "Add" (if not already added)
   - Add the share user
   - Grant ONLY these permissions:
     - List folder contents
     - Read & execute
     - Read
     - Write (if needed)
   - Click "Apply" and "OK"

3. Additional Restrictions:

   - Open Local Security Policy (Windows Pro):
     - Press Windows + R
     - Type `secpol.msc`
     - Navigate to Security Settings > Local Policies > User Rights Assignment
     - Remove the user from all policies except:
       - "Access this computer from the network"
       - "Log on over the network"
   - Alternatively (Windows Home):
     - Use Group Policy Editor Lite or restrict via Registry Editor

4. Verify Access:
   - Log in as the share user
   - Confirm they can only access the shared folder
   - Verify they cannot access other system locations
   - Test network access to the shared folder

## Setting Up the Windows 11 Shared Folder

### 1. Create and Configure the Folder on Windows 11

1. Create a new folder on your Windows 11 PC
2. Right-click the folder and select "Properties"
3. Go to the "Sharing" tab
4. Click "Advanced Sharing"
5. Check "Share this folder"
6. Click "Permissions"
7. Configure the permissions:
   - For basic sharing: give "Everyone" read/write access
   - For secure sharing: create specific Windows users and assign permissions

### 2. Enable Network Discovery on Windows 11

1. Open Windows Settings
2. Go to "Network & Internet" > "Advanced network settings"
3. Click "Advanced sharing settings"
4. Enable:
   - Network discovery
   - File and printer sharing
   - Password protected sharing (recommended)

### 3. Access the Windows Shared Folder from macOS

1. On your Mac, open Finder
2. Click "Go" in the menu bar
3. Select "Connect to Server" (or press Cmd+K)
4. Enter the network address:
   - Format: `smb://WINDOWS-PC-IP/Users/username/Desktop/foldername`
   - Example: `smb://192.168.1.100/SharedFiles`
5. Click "Connect"
6. Choose connection type:
   - "Registered User": Enter Windows username and password
   - "Guest": If allowed (not recommended for security)

## Security Best Practices

- Create a specific Windows user account for file sharing
- Use strong passwords
- Avoid using Guest access
- Enable password-protected sharing
- Regularly review sharing permissions
- Disable file sharing when not in use
- Keep both Windows and macOS systems updated

## Troubleshooting

If you can't connect to the shared folder:

1. Verify both computers are on the same network
2. Check Windows Defender Firewall settings:
   - Allow File and Printer Sharing
   - Allow SMB connections (port 445)
3. Ensure the Windows computer name or IP address is correct
4. Try using the IP address if the computer name doesn't work
5. Check if SMB 1.0 is needed (not recommended, but some older systems require it)
