Function gen-math ([int]$number)
{
 $i = 1
  While ($i -le $number)
  {
    $x = Random 15
    $y = Random 1000
    Write-Host -BackgroundColor BLACK -ForegroundColor Green " "$y 
    Write-Host -BackgroundColor BLACK -ForegroundColor Red ",x   $x,"
    # Write-Host -BackgroundColor BLACK -ForegroundColor Yellow "___________," 
    $i++
  }
}
