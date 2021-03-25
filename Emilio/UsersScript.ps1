# Script:                   UsersScript.ps1                       
# Author:                   Emilio Muniz                       
# Date of latest revision:  3/25/2021    
# Purpose:                  Use New-ADUser to create new user with attributes.

# Declaration of variables

# Declaration of functions

# Main
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
# End
# References: https://activedirectorypro.com/create-bulk-users-active-directory/ https://www.manageengine.com/products/ad-manager/help/csv-import-management/active-directory-ldap-attributes.html
