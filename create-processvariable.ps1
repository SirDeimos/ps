#creates a variable which lists your processes and keeps updated

Set-Variable -Name "processes" -Value (Get-Process) -Option constant -Scope global -Description "All processes" -PassThru -Confirm | Format-List -Property *

# ex:  $processes | Format-Table -AutoSize

Set-Variable -Name "networkinfo" -Value (Get-NetIPConfiguration -Detailed -InterfaceIndex 9) -Option constant -Scope global -Description "All processes" -PassThru -Confirm | Format-List -Expand -Property *
