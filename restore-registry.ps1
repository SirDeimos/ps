Function Undo-registry-changes
{
    Set-ItemProperty HKLM:\SOFTWARE\Classes\Microsoft.PowerShellCmdletDefinitionXML.1\ -Name FriendlyTypeName -Value '@"C:\WINDOWS\system32\windowspowershell\v1.0\powershell.exe",-120'

    Set-ItemProperty HKLM:\SOFTWARE\Classes\Microsoft.PowerShellConsole.1\ -Name FriendlyTypeName -Value '@"C:\WINDOWS\system32\windowspowershell\v1.0\powershell.exe",-107'

    Set-ItemProperty HKLM:\SOFTWARE\Classes\Microsoft.PowerShellData.1\ -Name FriendlyTypeName -Value '@"C:\WINDOWS\system32\windowspowershell\v1.0\powershell.exe",-104'

    Set-ItemProperty HKLM:\SOFTWARE\Classes\Microsoft.PowerShellModule.1\ -Name FriendlyTypeName -Value '@"C:\WINDOWS\system32\windowspowershell\v1.0\powershell.exe",-106'

    Set-ItemProperty HKLM:\SOFTWARE\Classes\Microsoft.PowerShellScript.1\ -Name FriendlyTypeName -Value '@"C:\WINDOWS\system32\windowspowershell\v1.0\powershell.exe",-103'

    Set-ItemProperty HKLM:\SOFTWARE\Classes\Microsoft.PowerShellSessionConfiguration.1\ -Name FriendlyTypeName -Value '@"C:\WINDOWS\system32\windowspowershell\v1.0\powershell.exe",-121'

    Set-ItemProperty HKLM:\SOFTWARE\Classes\Microsoft.PowerShellXMLData.1\ -Name FriendlyTypeName -Value '@"C:\WINDOWS\system32\windowspowershell\v1.0\powershell.exe",-105'


}

function set-registryValue([string]$item, [string]$name, [string]$value)
{
    Set-ItemProperty $item -Name $name -Value $value
    Write-Host "Updated $name to $value"
    Get-ItemProperty $item -Name $name
}

function get-value
{
    $name = Read-Host "name?"
    Get-ItemProperty (Get-Clipboard) -Name $name | Select-String $name

}

#