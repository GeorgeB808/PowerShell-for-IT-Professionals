# ============================================
# Test-NetworkConnectivity.ps1
# Author: George Baker
# Repository: PowerShell-for-IT-Professionals
# Description:
# Tests connectivity to common hosts used in
# enterprise troubleshooting.
# ============================================

Write-Host ""
Write-Host "==============================="
Write-Host " Network Connectivity Test"
Write-Host "==============================="
Write-Host ""

$Targets = @(
    "localhost",
    "127.0.0.1",
    "google.com",
    "8.8.8.8"
)

foreach ($Target in $Targets)
{
    Write-Host "Testing $Target..."

    if (Test-Connection -ComputerName $Target -Count 2 -Quiet)
    {
        Write-Host "SUCCESS: $Target is reachable." -ForegroundColor Green
    }
    else
    {
        Write-Host "FAILED: $Target is not reachable." -ForegroundColor Red
    }

    Write-Host ""
}

Write-Host "Testing Complete."
