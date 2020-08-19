
$Modules = 
"poshbot",
"Posh-Git",
"oh-my-posh", 
"IntelliTect.PSToolbox", 
"IntelliTect.Google", 
"PsGoogle", 
#"GoogleMap", 
#"GoogleAdminDirectory", 
"psmath", 
"Network", 
"LinuxResourcesDsc", 
"SolidFire.Linux", 
"Find-SmbShare", 
"WintellectPowerShell"

## For first time run:  Include Install, Update, and Import.  Afterwords, comment out "Install" and "Update" to increase Powershell load time
Import-Module /ps/profile-addons.ps1
Install-ModuleList($modules)
Update-ModuleList($modules)
Import-ModuleList($modules)

Write-Host "Feel free to run Random-Theme"
Random-Theme

# Import Chocolatey profule
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
