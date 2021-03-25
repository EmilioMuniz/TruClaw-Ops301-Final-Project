# Script:                   OUScript.ps1                       
# Author:                   Emilio Muniz                       
# Date of latest revision:  3/25/2021    
# Purpose:                  Use New-ADOrganizationalUnit to create new OU with attributes.

# Declaration of variables

# Declaration of functions

# Main
Import-Module ActiveDirectory

$groups = Import-Csv ‘C:\Users\Administrator\Desktop\OUNames.csv‘

foreach ($group in $groups) {
New-ADOrganizationalUnit -Name $group.name -Path “DC=corp,DC=globexpower,DC=com” -Description “NET2GRID”

}
# End
# References: http://www.alexandreviot.net/2015/04/27/active-directory-create-ou-using-powershell/
