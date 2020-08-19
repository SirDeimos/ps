Function Install-ModuleList([array]$Modules)
{
    $t1 = get-date
	$ModuleCount = $Modules.Count
	Write-Host "Module Count "$ModuleCount
    
	Foreach ($item in $Modules)
	{
		$n = $Modules.IndexOf($item)
		$p = ($n/$ModuleCount)
		Write-Progress -Activity "Installing $item" -Status "Module $n of $ModuleCount Complete" -PercentComplete $p
		Install-Module -Name $item -AllowClobber -Scope AllUsers -Force
        $t2 = Get-Date
        $diff = $t2 - $t1
Write-Host "Importing $thing took $diff seconds"				
	}
	Write-Host "Install Complete"
}
Function Import-ModuleList()
{  
    $t1 = get-date
	$ModuleCount = $Modules.Count
	Foreach ($thing in $Modules)
	{
		$n = $Modules.IndexOf($thing)
		$p = ($n/$ModuleCount)
		Write-Progress -Activity "Importing $thing" -Status "Module $n of $ModuleCount Complete" -PercentComplete $p
		Import-Module -Name $thing -Force
        $t2 = Get-Date
        $diff = $t2 - $t1
        Write-Host "Importing $thing took $diff seconds"
	}
}

Function Update-ModuleList()
{
    $t1 = get-date
	$ModuleCount = $Modules.Count
	Foreach ($thing in $Modules)
	{   
		$n = $Modules.IndexOf($thing)
		$p = ($n/$ModuleCount)
		Write-Progress -Activity "Updating $thing" -Status "Module $n of $ModuleCount Complete" -PercentComplete $p
		Update-Module -Name $thing -Force -ErrorAction SilentlyContinue
$t2 = Get-Date
        $diff = $t2 - $t1
Write-Host "Importing $thing took $diff seconds"	}
}

Function Random-Theme()
{
	$themes = (Get-Theme).Name
	$min = 1
	$max = $themes.Count
	$choice = Random -Minimum $min -Maximum $max

	Set-Theme ($themes[$choice])
	Write-Host "Setting theme to "($themes[$choice]) -BackgroundColor Green -ForegroundColor Black
}

