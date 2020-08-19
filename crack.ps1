import-module c:\ps\passwords.ps1

function crack
{
$wshell = New-Object -ComObject wscript.shell;
$wshell.AppActivate('Open Data')
$pass = get-password 
Start-Sleep -Milliseconds 500
$wshell.SendKeys($pass)
$wshell.SendKeys('~')
}
