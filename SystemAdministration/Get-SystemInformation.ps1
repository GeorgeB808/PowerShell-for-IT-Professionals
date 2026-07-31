# ============================================
# Get-SystemInformation.ps1
# Author: George Baker
# Repository: PowerShell-for-IT-Professionals
# Description:
# Displays basic system information useful for
# Help Desk troubleshooting.
# ============================================

Write-Host "========================================="
Write-Host "      SYSTEM INFORMATION REPORT"
Write-Host "========================================="

Write-Host "`nComputer Name:"
$env:COMPUTERNAME

Write-Host "`nCurrent User:"
$env:USERNAME

Write-Host "`nOperating System:"
(Get-CimInstance Win32_OperatingSystem).Caption

Write-Host "`nWindows Version:"
(Get-CimInstance Win32_OperatingSystem).Version

Write-Host "`nSystem Boot Time:"
(Get-CimInstance Win32_OperatingSystem).LastBootUpTime

Write-Host "`nIP Address(es):"

Get-NetIPAddress |
Where-Object {$_.AddressFamily -eq "IPv4"} |
Select-Object IPAddress

Write-Host "`nDisk Information"

Get-PSDrive -PSProvider FileSystem

Write-Host "`nMemory Information"

Get-CimInstance Win32_ComputerSystem |
Select-Object TotalPhysicalMemory

Write-Host "`n========================================="
Write-Host "      Report Complete"
Write-Host "========================================="
