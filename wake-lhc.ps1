Function Wake-LHC
{
$lhc=$env:LHC -
try{ Invoke-WakeOnLan $lhc -Verbose
    "Booting..."
    Start-Sleep -Seconds 20
    "Should be up now!"
    }
catch{Write-Host "Unable to wake $env:LHC"}
}