# ============================================
# Get-ADUsersReport.ps1
# Author: George Baker
# Repository: PowerShell-for-IT-Professionals
# Description:
# Displays Active Directory user accounts.
# ============================================

Import-Module ActiveDirectory

Write-Host ""
Write-Host "========================================="
Write-Host " ACTIVE DIRECTORY USER REPORT"
Write-Host "========================================="
Write-Host ""

Get-ADUser -Filter * |
Select-Object Name,
SamAccountName,
Enabled,
Department |
Sort-Object Name
