Connect-AzAccount
Connect-MgGraph
$user = Get-AzADUser -ObjectId 179c1c6b-18b3-4208-bc93-92c64a02db41
New-AzRoleAssignment -Scope '/' -RoleDefinitionName 'Owner' -ObjectId $user.Id

# Remove the role
Remove-AzRoleAssignment -Scope '/' -RoleDefinitionName 'Owner' -ObjectId $user.Id


Import-Module -Name Az.Resources


Connect-MgGraph -Scopes 'User.Read.All', 'Application.Read.All'

Get-MgApplication -Filter "DisplayName eq 'Openidconnect-terst'"
Get-MgServicePrincipal -Filter "DisplayName eq 'Openidconnect-terst'"

$object = Get-MgServicePrincipal -Filter "DisplayName eq 'Openidconnect-terst'" | fl
$object.Id


Get-MgServicePrincipal -Filter "DisplayName eq 'Openidconnect-terst'" | fl
Get-MgApplication -Filter "DisplayName eq 'Openidconnect-terst'" | fl