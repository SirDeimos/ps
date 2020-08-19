Function TempAlert {
    Add-Type AssemblyNamePresentationFramework
    [System.Windows.MessageBox]::Show("Temerature has reached 70C, better stop doing that shit!  Whatever you're doing...")
    Get-Process | Format-Table -Property "Name,CPU" | Sort-Object -Descending
}
