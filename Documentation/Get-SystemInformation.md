# Get-SystemInformation.ps1

## Purpose

This script gathers essential Windows system information commonly used by Help Desk technicians during initial troubleshooting.

## Information Collected

* Computer name
* Logged-in user
* Operating system
* Windows version
* Last boot time
* IPv4 addresses
* Disk information
* Total physical memory

## Technologies Used

* Windows PowerShell
* CIM (Common Information Model)
* Environment variables
* Networking cmdlets

## Commands Used

* `Get-CimInstance`
* `Get-NetIPAddress`
* `Where-Object`
* `Select-Object`

## Skills Demonstrated

* PowerShell scripting
* Windows administration
* System inventory
* Basic networking
* Help Desk troubleshooting

## Real-World Use Case

A Help Desk technician can run this script at the beginning of a support session to quickly gather system information without manually opening multiple Windows tools. This reduces troubleshooting time and provides a consistent starting point for diagnosing issues.

## Future Improvements

* Export results to a text file
* Export results to CSV
* Display disk free space in GB
* Include CPU information
* Include BIOS information
* Include installed RAM modules
