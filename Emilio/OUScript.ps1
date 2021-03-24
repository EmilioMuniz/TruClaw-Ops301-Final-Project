Import-Module ActiveDirectory

$groups = Import-Csv ‘C:\Users\Administrator\Desktop\OUNames.csv‘

foreach ($group in $groups) {
New-ADOrganizationalUnit -Name $group.name -Path “DC=corp,DC=globexpower,DC=com” -Description “NET2GRID”

}
