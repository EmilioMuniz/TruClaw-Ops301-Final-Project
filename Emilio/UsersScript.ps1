Import-Module ActiveDirectory
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
 New-ADUser -Name "$givenName" -Surname "$sn" -SamAccountName "$sAMAccontName" -Title "$title"
}
