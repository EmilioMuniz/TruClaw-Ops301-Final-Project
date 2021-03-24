netsh interface ip set address "Ethernet" static 192.168.1.10 255.255.255.0 192.168.1.1
netsh interface ip set dns "Ethernet" static 127.0.0.1

$input = Read-Host -Prompt 'Please type in the new name for this computer'
Rename-Computer -NewName "$input"

Add-WindowsFeature AD-Domain-Services -IncludeManagementTools
Install-ADDSForest -DomainName corp.globexpower.com -InstallDNS
