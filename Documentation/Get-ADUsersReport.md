# Get-ADUsersReport.ps1

## Purpose

This script retrieves user accounts from Active Directory and displays important account information including display name, username, account status, and department.

## Commands Used

* Import-Module ActiveDirectory
* Get-ADUser
* Select-Object
* Sort-Object

## Skills Demonstrated

* Active Directory administration
* PowerShell modules
* User management
* Data reporting
* Windows Server administration

## Real-World Use Case

Help Desk technicians and system administrators often need to verify user accounts, determine whether an account is enabled, and review user information while assisting employees or auditing directory data.

## Requirements

* Windows Server with the Active Directory module installed
* Appropriate permissions to query Active Directory

## Future Improvements

* Export results to CSV
* Filter by Organizational Unit
* Display email addresses
* Display password expiration information
* Search for specific users
