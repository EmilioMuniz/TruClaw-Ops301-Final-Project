#!/usr/bin/env pwsh

# Title - assignmentandrename
# Author - Tom Esch
# Date Last Revised - 3/23/2021
# Purpose - Assign Windows 10 or Server Edition a static IPv4 and rename the machine.

netsh interface ip set address "Ethernet" static 192.168.1.10 255.255.255.0 192.168.1.1
netsh interface ip set dns "Ethernet" static 127.0.0.1

$input = Read-Host -Prompt 'Please type in 
