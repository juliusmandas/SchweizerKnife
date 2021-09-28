$User_List = Get-ADUser -Filter * -Properties Description

foreach ($User in $User_List) {

     if ($User.Description -ne $null) {
        Write-Host $User.Name
        Write-Host $User.SamAccountname
        Write-Host $User.Description
        Write-Host ""
     }

}
