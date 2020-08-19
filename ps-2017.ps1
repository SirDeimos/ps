#$sortPath = @('M:\Camera Uploads', 'M:\Camera Uploads\Camera')
$sortPath = @("M:\(家人 - Family Album)\Pictures (照片)\2013", "M:\(家人 - Family Album)\Videos (视频)\2013")
$picpath = 'M:\(家人 - Family Album)\Pictures (照片)\2013\'
$vidpath = 'M:\(家人 - Family Album)\Videos (视频)\2013\'
$timestamp = get-date -Format MMddyy
$log = @("")
$logpath = "C:\Users\THOR\Desktop\photoSort-logs"
$logfile = "$logpath\photosortlog-$timestamp.csv"
$date = get-date
Add-Type -AssemblyName PresentationFramework

function photo-sort()
{
    $log += ("Job ran on "+$date.DayOfWeek+' '+$date.Month+'/'+$date.day+" "+$date.TimeOfDay+",")
    foreach ($pathtoclean in $sortPath)
    {

        #Photos
        $filetype = @("jpg","png")
        $topath = $picPath
        ForEach ($file in $filetype)
        {
            
            #$tstamp = get-date -Format MMddyyhhss
            #$log += ($tstamp+":")
            $contents = dir $pathtoclean\*.$file
            if($contents.Count -ge 1)
            {
                $log += ($contents+",")
                $log += ("Moved to $vidPath"+",")
            }
            else
            {
               # $log +=("No *.$file files to sort,")  
            }
            Move-Item -Path $pathtoclean\*.$file -Destination $picPath -ErrorVariable err
            # Write-Host "deleting any existing *.$file from Uploads"
            if ($err.Count -gt 0)
            {
            $duplicate = $duplicate+1
            $cleanupextensions += @("$pathtoclean\*.$file")
            }
        }

        if($duplicate.Count -gt 0 )
            { 
            $msgBoxInput = [System.Windows.MessageBox]::Show('Photos have already been uploaded.  Delete that shit?',"Orion's Sick Fucking Photo Sorting Tool",'yesnocancel','Error')
            switch  ($msgBoxInput) {

            'Yes' 
            {  
                Foreach ($thing in $cleanupextensions)
                {
                    del $thing
                }
                echo "So I just deleted this $thing"
            }

            'No' { [System.Windows.MessageBox]::Show('Fine, be a little bitch.')  }

            'Cancel' {  }
        }
        foreach ($item in $cleanupextensions)
        {
        $log += ($item+"")
        }
    $log += ("*")
    }
#################################################################################################
    #Videos

    $filetype = @("mp4","avi", "mov", "3gp")
    $topath = $vidPath
      
    Foreach ($file in $filetype)
    {
        #$tstamp = get-date -Format MMddyyhhss
        #$log += ($tstamp+":")
        $contents = dir $pathtoclean\*.$file
        if($contents.Count -ge 1)
        {

                $log += ($contents+",")
                $log += ("Moved to $vidPath"+",")

        }
        else
        { 
          #  $log +=("No *.$file files to sort,") 
        }
        Move-Item -Path $pathtoclean\*.$file -Destination $vidPath -ErrorVariable err2
        # Write-Host "deleting any existing *.$file from Uploads"

        if ($err2.Count -gt 0)
        {
            $duplicate2 = $duplicate2+1
            $cleanupextensions += @("$pathtoclean\*.$file")
        }
    }

    if($duplicate2.Count -gt 0 )
    { 
        $msgBoxInput = [System.Windows.MessageBox]::Show('Videos have already been uploaded.  Delete that shit too?',"Orion's Sick Fucking Photo Sorting Tool",'yesnocancel','Error')
        switch  ($msgBoxInput)
        {

            'Yes'
            {  
                Foreach ($thing in $cleanupextensions)
                {
                    del $thing
                }
                echo "So I just deleted this $thing"
            }

            'No' { [System.Windows.MessageBox]::Show('Fine, be a little bitch.')  }

            'Cancel' {  }

            }
        }
        foreach ($item in $cleanupextensions)
        {
            $log += ($item+",")
        }  
    $log += ("*")
    }



ConvertTo-Csv $log -UseCulture
echo $logfile
$log | Out-File $logfile -Append  
   
}

photo-sort
$msgBoxInput = [System.Windows.MessageBox]::Show("Photo and Video logged to $logfile")