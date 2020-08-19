Function unzip() 
{
  ls *.zip | Format-Table -Property Name > ~\tempList.csv
  Get-Content ~\tempList.csv  | ForEach-Object 
  {
    Expand-Archive -Path .\$_
    Write-Host "Done Extracting to ".\$_"
  }
}

New-Function unzip() -scriptblock {
  ls *.zip | Format-Table -Property Name > ~\tempList.csv
  Get-Content ~\tempList.csv | ForEach-Object 
  {
    Expand-Archive -Path .\$_
    Write-Host "Done Extracting to ".\$_"
  }
}
