$fileroot = "C:\data\ps"

Function Install-ModuleList([array]$Modules)
{
    	$t1 = get-date
	Install-Module $Modules -Confirm -Verbose
	$t2 = Get-Date
        $diff = $t2 - $t1
	Write-Host "Install of $thing took $diff seconds"				
}
Function Import-ModuleList([array]$Modules)
{  
    	$t1 = get-date
	Import-Module $Modules -Confirm -Verbose
	$t2 = Get-Date
        $diff = $t2 - $t1
        Write-Host "Importing $thing took $diff seconds"
}

Function Update-ModuleList([array]$Modules)
{
    	$t1 = get-date
	Update-Module $Modules -Confirm -Verbose
	$t2 = Get-Date
        $diff = $t2 - $t1
 	Write-Host "Updating $thing took $diff seconds"
}

Function Random-Theme()
{
	$NumberOfThemes = (get-theme).count
	$NumberOfThemes = Random $NumberOfThemes
	Set-theme $NumberOfThemes

	$themes = Get-Theme ; $names = $themes.Name ; set-theme $names[$NumberOfThemes] -Verbose
}

