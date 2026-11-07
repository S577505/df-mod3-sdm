## Module 3 - Digital Forensics

This project demonstrates basic digital forensic evidence collection and preservation using PowerShell.

The project includes:
- Evidence collection and file inventory
- Windows system event logs
- File permission documentation
- Evidence backup using a PowerShell script
- Read-only protection for backup files
  

## 1. Secure Data Management (SDM)

For this assignment, I used PowerShell to collect and organize digital forensic evidence.

I created an evidence folder and saved case notes, a file inventory, and Windows system event logs.

I used PowerShell commands to:
- Create folders for organizing evidence
- Read and search evidence files
- Export file information to CSV
- Collect Windows system event logs
- Document file permissions

These steps helped me understand how digital evidence can be collected, organized, and preserved for an investigation.

## 2. File Permissions

I used PowerShell to examine the permissions assigned to my evidence files.

I saved the original permissions in evidence-permissions-before.txt and documented them again in evidence-permissions-after.txt.

This helped me understand how file permissions can be used to control access to digital evidence and protect it from unauthorized changes.

## 3. Evidence Backup and Preservation

I created a PowerShell script called backup-evidence.ps1 to back up my digital evidence.

The script copies the evidence files into a separate folder called evidence-backup.

It also marks the backup files as read-only to help prevent accidental changes.

I ran the script successfully and verified that all three backup files were marked as read-only.