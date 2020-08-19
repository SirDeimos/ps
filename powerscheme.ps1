function powerset([string]$i)
{
  if(! $i){ Write-Host "Selections are (1) High Power, (2) Balanced, (3) Power Saver, (4) Ryzen" }

  if($i -imatch "1")
  {
    powercfg /SETACTIVE 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
  }
  if($i -imatch "2")
  {
    powercfg /SETACTIVE 381b4222-f694-41f0-9685-ff5bb260df2e
  }
  if($i -imatch "3")
  {
    powercfg /SETACTIVE a1841308-3541-4fab-bc81-f71556f20b4a
  }
  if($i -imatch "4")
  {
    powercfg /SETACTIVE 9897998c-92de-4669-853f-b7cd3ecb2790
  }
  else
  {
    $wtf = "WTF ARE YOU DOING???"
    "Try 'powerset 1' (HP), 'powerset 2' (bal), 'powerset 3' (PSave), or 'powerset 4' (Ryzen) "
    wsl toilet "$wtf"
  }
}
