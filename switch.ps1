Function Switch([System.Int64]$language)
{
    if ($language -eq 1)
    {
        Set-WinUserLanguageList -LanguageList en-US -Force
    }
    if(!$language -eq 2)
    {
        Set-WinUserLanguageList -LanguageList zh-CN -Force
    }
    $currentLang = Get-WinUserLanguageList | Format-Table -AutoSize -Property LanguageTag,Autonym,EnglishName,Spellchecking,Handwriting
    Write-Host "Successfully set User Langage List"
    Write-Host "Language: "($currentLang.LanguageTag)
    Write-Host ($currentLang.Autonym)" like "($currentLang.EnglishName)
    Write-Host "Spellchecking is "$currentLang.Spellchecking", Handwriting "$currentLang.Handwriting
}

Import-Module C:\ps\switch.ps1