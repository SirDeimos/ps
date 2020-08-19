#  Input for the computer name
# $s = read-host "Enter the computer name: "



$d = [datetime]::Today.AddDays(-1)

$logs = @("Application", "System", "Security")

$analytics = for ($i=0; $i -lt 2; $i++)  {
    $logs[$i] + " log:"
    $file = "d:\notes\$(random).txt"
     Get-EventLog $logs[$i] -After  | 
     Group-Object -Property Message | 
     Sort-Object Count -Descending |
     Format-Table -Property Count, Name -AutoSize
     # Out-File $file
     # Invoke-Item $file
     # Sort-Object
    }
    $analytics

#$file = "d:\notes\Log-$(random).csv"

# $analytics | Out-File -LiteralPath $file

#Invoke-Item $file
