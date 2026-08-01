# Get-DiskSpaceReport.ps1

## Purpose

This script reports disk usage for all local drives and highlights drives with low available storage.

## Information Collected

* Drive letter
* Total disk size
* Used disk space
* Free disk space
* Percentage of free space
* Low disk space warning

## Technologies Used

* PowerShell
* Get-CimInstance
* Win32_LogicalDisk
* Conditional logic
* Mathematical calculations

## Skills Demonstrated

* Windows administration
* System monitoring
* Storage management
* PowerShell scripting
* Help Desk troubleshooting

## Real-World Use Case

A user reports that their computer is running slowly or cannot save files. Before replacing hardware or reinstalling software, a Help Desk technician can use this script to quickly determine whether the issue is caused by insufficient disk space.

## Future Improvements

* Export results to CSV
* Export results to HTML
* Highlight critical drives in red
* Monitor remote computers
* Email low disk space alerts
