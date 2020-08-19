# File to store encrypted passwords:
$file = 'C:\ps\keepass\pw.txt'

function save-password([String]$pw, [String]$file)
{
  if (!$file)
  {
    $tempRoot = 'C:\PS\readme.txt'
    $FileBrowser = New-Object System.Windows.Forms.OpenFileDialog
    [void]$FileBrowser.ShowDialog()
    $file = $FileBrowser.FileName
  }
   
  if($pw)
  {
    Write-Host "setting the password $pw"
    $pw | ConvertTo-SecureString -AsPlainText -Force | ConvertFrom-SecureString | Out-File $file
    Write-Host "Password saved to file $file"
  }
  else
  {
    $pw1 = (Get-Credential).Password | ConvertFrom-SecureString | Out-File $file
    # Read-Host "Enter Password" | ConvertTo-SecureString -AsPlainText -Force | ConvertFrom-SecureString
    # Out-File -FilePath $path -InputObject $pw1
    Write-Host "Password saved to file $file"
  }
}

function get-password
{
  if (!$file)
  {
    $tempRoot = 'C:\PS\readme.txt'
    $FileBrowser = New-Object System.Windows.Forms.OpenFileDialog
    [void]$FileBrowser.ShowDialog()
    $file = $FileBrowser.FileName
  }
  $pass = Get-Content $file | ConvertTo-SecureString
  $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pass)
  $UnsecurePassword = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)
  return $UnsecurePassword
}