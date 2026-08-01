# ============================================
# Search-ADUser.ps1
# Author: George Baker
# Repository: PowerShell-for-IT-Professionals
# Description:
# Searches Active Directory for a user.
# ============================================

Import-Module ActiveDirectory

$User = Read-Host "Enter username"

Get-ADUser -Filter "SamAccountName -like '*$User*'" `
-Properties DisplayName, Enabled, Department, EmailAddress |
Select-Object DisplayName,
SamAccountName,
Enabled,
Department,
EmailAddress
