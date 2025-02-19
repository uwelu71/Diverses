Connect-AzAccount
$user = Get-AzADUser -ObjectId 179c1c6b-18b3-4208-bc93-92c64a02db41
New-AzRoleAssignment -Scope '/' -RoleDefinitionName 'Owner' -ObjectId $user.Id

# Remove the role
Remove-AzRoleAssignment -Scope '/' -RoleDefinitionName 'Owner' -ObjectId $user.Id