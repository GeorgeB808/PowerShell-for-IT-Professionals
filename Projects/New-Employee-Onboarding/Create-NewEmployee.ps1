# ============================================
# Create-NewEmployee.ps1
# Author: George Baker
# Repository: PowerShell-for-IT-Professionals
# Description:
# Demonstrates creating a new Active Directory
# user account.
# ============================================

Import-Module ActiveDirectory

$FirstName = Read-Host "Enter first name"
$LastName = Read-Host "Enter last name"

$Username = ($FirstName.Substring(0,1) + $LastName).ToLower()

Write-Host ""
Write-Host "Preview"
Write-Host "-------------------------"
Write-Host "Name: $FirstName $LastName"
Write-Host "Username: $Username"

# Example command (edit for your lab before use)

# New-ADUser `
#   -Name "$FirstName $LastName" `
#   -GivenName $FirstName `
#   -Surname $LastName `
#   -SamAccountName $Username `
#   -Enabled $true
