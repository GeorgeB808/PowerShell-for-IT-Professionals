# Get-RunningServices.ps1

## Purpose

This script lists all Windows services that are currently running. It provides a quick overview of active services that support Windows and installed applications.

## Commands Used

* Get-Service
* Where-Object
* Sort-Object
* Select-Object

## Skills Demonstrated

* PowerShell pipelines
* Service management
* Object filtering
* Windows administration

## Real-World Use Case

Help Desk technicians frequently verify whether essential Windows services are running when troubleshooting issues such as printing failures, Windows Update problems, application startup errors, or network connectivity. This script quickly displays all active services, making it easier to identify whether a required service is operational.

## Future Improvements

* Display stopped services
* Restart selected services
* Export service status to CSV
* Monitor service health automatically
* Highlight critical services that are stopped
