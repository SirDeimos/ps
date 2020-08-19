#  Input for the computer name
# $s = read-host "Enter the computer name: "



$d = [datetime]::Today.AddDays(-1)

$logs = @("Application", "System", "Security")

$analytics = for ($i=0; $i -lt 3; $i++)  {
    $logs[$i] + " log:"
    get-winevent -logname $logs[$i] -MaxEvents 100 | #-FilterHashtable @{logname=$logs[$i];Level=2} | #   | # -FilterHashtable @{Level=2} -MaxEvents 2000 | #(-FilterHashtable @{logname=$logs[$i]} -MaxEvents 2000 | 
    Group-Object message -NoElement | 
    Sort-Object Count -Descending |
    # ft count, message, TimeCreated -wrap
    Out-Gridview
    }

# $file = "d:\notes\Log-$(random).txt"

# $analytics | Out-File -LiteralPath $file

# Invoke-Item $file


#get-winevent -FilterHashtable @{logname='system';Level=2} | Group-Object -Property ProviderName -NoElement | ft -AutoSize