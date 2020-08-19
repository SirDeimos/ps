$fileroot = "C:\data\ps"
$addon = "$fileroot\profile-addons.ps1"

$Modules = "oh-my-posh", "psmath", "Network", "WintellectPowerShell", "Chocolatey", "Posh-Git"

<# Module Quick-List
"poshbot",
"Posh-Git",
"IntelliTect.PSToolbox", 
"IntelliTect.Google", 
"PsGoogle", 
"GoogleMap", 
"GoogleAdminDirectory",  
"Find-SmbShare", 
#>

Write-Host "($Modules.Count) ACTIVE Modules:"
$Modules | ForEach-Object { $i = $Modules.IndexOf($_); Write-Host ($i+1)")"($Modules[$i]) }

## For first time run:  Include Install, Update, and Import.  Afterwords, comment out "Install" and "Update" to increase Powershell load time

Import-Module $addon



$Force = Read-Host "Inst(a)ll?  (U)pdate? or just (I)mport, and (U)pdate? or (S)kip"

if ($Force -ieq "a") {

 	## Install-ModuleList($modules)
	Write-Host "Installing..."
	$Modules | ForEach-Object { $i = $Modules.IndexOf($_); Write-Host "Installing"($Modules[$i])"..."; Install-Module $Modules[$i] -Force }


	##Import-ModuleList($modules)
	Write-Host "Importing..."
	$Modules | ForEach-Object { $i = $Modules.IndexOf($_); Write-Host "Importing"($Modules[$i])"..."; Import-Module $Modules[$i] -Force }

}
if ($Force -ieq "u") {
	##Update-ModuleList($modules)
	Write-Host "Updating..."
	$Modules | ForEach-Object { $i = $Modules.IndexOf($_); Write-Host "Updating"($Modules[$i])"..."; Update-Module $Modules[$i] -Force }

	##Import-ModuleList($modules)
	Write-Host "Importing..."
	$Modules | ForEach-Object { $i = $Modules.IndexOf($_); Write-Host "Importing"($Modules[$i])"..."; Import-Module $Modules[$i] -Force }
}
if ($Force -ieq "i") {
	##Import-ModuleList($modules)
	Write-Host "Importing..."
	$Modules | ForEach-Object { $i = $Modules.IndexOf($_); Write-Host "Importing"($Modules[$i])"..."; Import-Module $Modules[$i] -Force }

}else { Write-Host "Nothing, eh? Too bad."; $Modules | ForEach-Object { $i = $Modules.IndexOf($_); Write-Host "Importing"($Modules[$i])"..."; Import-Module $Modules[$i] -Force }  }


Write-Host "All done.  Feel free to run Random-Theme for a fresh skin!"
$born = Get-Date -month 1 -day 11 -year 1983 -hour 23
$now = get-date
$age = $now - $born

Write-Host "You have now lived for "$age.Days" days!"
Write-Host "That's "$age.TotalHours" hours... "$age.TotalMinutes" minutes."
Write-Host "Fucking "$age.TotalSeconds" seconds!!"

# Random-Theme
