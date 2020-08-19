
$logFile = "C:\Users\THOR\Desktop\photoSort-logs\Photo-Sort-Log.txt"
$date = get-date
$formattedDate = $date.ToLongDateString()

Start-Transcript -Append $logFile

Write-Host "----------------"$formattedDate" ----------------"
Add-Type -AssemblyName PresentationFramework

$basePath = "M:\Camera Uploads"
$totalList = Get-ChildItem $basePath -Name
$picpath = 'M:\(家人 - Family Album)\Pictures (照片)\2019\'
$vidpath = 'M:\(家人 - Family Album)\Videos (视频)\2019\'

$picFiletype = @("jpg","png","jpeg")
$videoFiletype = @("mp4","avi", "mov", "3gp")
$piclist = Get-ChildItem $basePath -Name -Include *$picFiletype
$vidlist = Get-ChildItem $basePath -Name -Include *$vidFiletype

function photo-sort()
{ 
    ForEach ($item in $piclist)
    {    
        Write-Host "Moving "$basePath\$item "to" $picPath
        Move-Item -Path $basePath\$item -Destination $picPath -ErrorVariable err
    }

    ForEach ($item in $vidlist)
    {
        Write-Host "Moving "$basePath\$item "to" $vidPath
        Move-Item -Path $basePath\$item -Destination $vidPath -ErrorVariable err
    }

    if ($err.Count -gt 0)
    {
        write-host "TOO MANY ERRORS!!"
    }

    ForEach ($item in $filelist)
    {
            Write-Host "Deleting"$basePath\$filelist
            del $basePath\$filelist -Force -Confirm
    }
    $endTime = Get-Date
    $timeDifference = $endTime - $date
    Write-Host "The job completed in " $timeDifference.TotalSeconds "seconds"

}


photo-sort

