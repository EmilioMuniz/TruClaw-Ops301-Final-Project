Import-Module ActiveDirectory

$groups = Import-Csv ‘C:\Users\Administrator\Desktop\OUNames.csv‘

foreach ($group in $groups) {
    New-ADOrganizationalUnit -Name $group.name -Path “DC=corp,DC=globexpower,DC=com” -Description “NET2GRID”
}

$file = "C:\Users\Administrator\Desktop\UsersNames.csv"
$importedUsers = Import-csv $file
foreach ($user in $importedUsers)
{
 $givenName = $user.givenName
 $sn = $user.sn

 $sAMAccontName = $user.sAMAccountName

 $password = $user.password
 $ou = $user.ou
 $department = $user.department

 $title = $user.title
 New-ADUser -DisplayName "$givenName" -Surname "$sn" -SamAccountName "$sAMAccontName" -Title "$title"
}
