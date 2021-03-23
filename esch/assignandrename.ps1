#!/usr/bin/env pwsh

# Title - assignmentandrename
# Author - Tom Esch
# Date Last Revised - 3/23/2021
# Purpose - Assign Windows 10 or Server Edition a static IPv4 and rename the machine.

$ip = "192.168.1.10"
$prefix = "24"
$gateway = "192.168.1.1"
$DNS = "192.168.1.10"
$adapter = (Get-NetAdapter).ifIndex
New-NetIPAddress -IPAddress $ip -Prefixlength $prefix `
-InterfaceIndex $adapter -DefaulGateway -$gateway

$input Read-Host -Prompt 'Please type in the new name for this computer: '
Rename-Comptuer -NewName "$input" -restart
