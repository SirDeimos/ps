Function autoclick([System.Int16]$delay, [System.Int64]$variation, [System.Int64]$c)
{
    $n = [System.Int64]1
    $plus = [System.Int16]$variation
    $minus = [System.Int16]($plus*(-1))
    $limit = [System.Int64]$c
    Write-Host "Starting an auto-click for $c occurances, with a $delay of $delay and deviation $variation (ms)"
    Add-Type -MemberDefinition '[DllImport("user32.dll")] public static extern void mouse_event(int flags, int dx, int dy, int cButtons, int info);' -Name U32 -Namespace W;
    While($n -le $limit)
    {
	    $n++
            $r = random -Minimum $minus -Maximum $plus
            $fuzz = [System.Int16]($delay + $r)
  
            
	    [W.U32]::mouse_event(6,0,0,0,0)

            $output = "Waiting $fuzz milliseconds"
            Write-Host "Click #$n --  $output"

 	    Start-Sleep -Milliseconds $fuzz       
    }
}

Import-Module "C:\ps\Click.ps1" -Force