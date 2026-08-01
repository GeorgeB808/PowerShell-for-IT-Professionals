# ============================================
# Get-DiskSpaceReport.ps1
# Author: George Baker
# Repository: PowerShell-for-IT-Professionals
# Description:
# Displays disk usage information for all
# local drives.
# ============================================

Write-Host ""
Write-Host "========================================="
Write-Host "        DISK SPACE REPORT"
Write-Host "========================================="
Write-Host ""

Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" |
ForEach-Object {

    $Drive = $_.DeviceID
    $SizeGB = [math]::Round($_.Size / 1GB,2)
    $FreeGB = [math]::Round($_.FreeSpace / 1GB,2)
    $UsedGB = [math]::Round($SizeGB - $FreeGB,2)
    $PercentFree = [math]::Round(($FreeGB / $SizeGB) * 100,2)

    Write-Host "Drive: $Drive"
    Write-Host "Total Size : $SizeGB GB"
    Write-Host "Used Space : $UsedGB GB"
    Write-Host "Free Space : $FreeGB GB"
    Write-Host "Percent Free: $PercentFree %"

    if ($PercentFree -lt 15)
    {
        Write-Host "WARNING: Low disk space!" -ForegroundColor Yellow
    }

    Write-Host ""
}
