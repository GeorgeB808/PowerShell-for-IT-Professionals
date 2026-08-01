# Test-NetworkConnectivity.ps1

## Purpose

This script verifies network connectivity by testing several commonly used hosts. It provides a quick way for Help Desk technicians to determine whether a workstation has basic network access.

## Technologies Used

* PowerShell
* Test-Connection
* Arrays
* Loops
* Conditional statements

## Skills Demonstrated

* Network troubleshooting
* PowerShell scripting
* Connectivity testing
* Automation
* Help Desk diagnostics

## Real-World Use Case

A user reports that they cannot access company resources or browse the internet. This script helps determine whether the issue is local, network-related, or external by testing connectivity to localhost, the loopback address, a public DNS server, and a public website.

## Future Improvements

* Accept custom hostnames as input
* Export results to a log file
* Measure response time
* Test multiple ports
* Generate a troubleshooting report
