# Auto-generated argument completers for parameters of SDK ConstantClass-derived type used in cmdlets.
# Do not modify this file; it may be overwritten during version upgrades.

$psMajorVersion = $PSVersionTable.PSVersion.Major
if ($psMajorVersion -eq 2) 
{ 
	Write-Verbose "Dynamic argument completion not supported in PowerShell version 2; skipping load."
	return 
}

# PowerShell's native Register-ArgumentCompleter cmdlet is available on v5.0 or higher. For lower
# version, we can use the version in the TabExpansion++ module if installed.
$registrationCmdletAvailable = ($psMajorVersion -ge 5) -Or !((Get-Command Register-ArgumentCompleter -ea Ignore) -eq $null)

# internal function to perform the registration using either cmdlet or manipulation
# of the options table
function _awsArgumentCompleterRegistration()
{
    param
    (
        [scriptblock]$scriptBlock,
        [hashtable]$param2CmdletsMap
    )

    if ($registrationCmdletAvailable)
    {
        foreach ($paramName in $param2CmdletsMap.Keys)
        {
             $args = @{
                "ScriptBlock" = $scriptBlock
                "Parameter" = $paramName
            }

            $cmdletNames = $param2CmdletsMap[$paramName]
            if ($cmdletNames -And $cmdletNames.Length -gt 0)
            {
                $args["Command"] = $cmdletNames
            }

            Register-ArgumentCompleter @args
        }
    }
    else
    {
        if (-not $global:options) { $global:options = @{ CustomArgumentCompleters = @{ }; NativeArgumentCompleters = @{ } } }

        foreach ($paramName in $param2CmdletsMap.Keys)
        {
            $cmdletNames = $param2CmdletsMap[$paramName]

            if ($cmdletNames -And $cmdletNames.Length -gt 0)
            {
                foreach ($cn in $cmdletNames)
                {
                    $fqn =  [string]::Concat($cn, ":", $paramName)
                    $global:options['CustomArgumentCompleters'][$fqn] = $scriptBlock
                }
            }
            else
            {
                $global:options['CustomArgumentCompleters'][$paramName] = $scriptBlock
            }
        }

        $function:tabexpansion2 = $function:tabexpansion2 -replace 'End\r\n{', 'End { if ($null -ne $options) { $options += $global:options} else {$options = $global:options}'
    }
}

# To allow for same-name parameters of different ConstantClass-derived types 
# each completer function checks on command name concatenated with parameter name.
# Additionally, the standard code pattern for completers is to pipe through 
# sort-object after filtering against $wordToComplete but we omit this as our members 
# are already sorted.

# Argument completions for service Alexa For Business


$ALXB_Completers = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    switch ($("$commandName/$parameterName"))
    {
        # Amazon.AlexaForBusiness.BusinessReportFormat
        {
            ($_ -eq "New-ALXBBusinessReportSchedule/Format") -Or
            ($_ -eq "Update-ALXBBusinessReportSchedule/Format")
        }
        {
            $v = "CSV","CSV_ZIP"
            break
        }

        # Amazon.AlexaForBusiness.BusinessReportInterval
        "New-ALXBBusinessReportSchedule/ContentRange_Interval"
        {
            $v = "ONE_DAY","ONE_WEEK","THIRTY_DAYS"
            break
        }

        # Amazon.AlexaForBusiness.CommsProtocol
        {
            ($_ -eq "New-ALXBConferenceProvider/IPDialIn_CommsProtocol") -Or
            ($_ -eq "Update-ALXBConferenceProvider/IPDialIn_CommsProtocol")
        }
        {
            $v = "H323","SIP","SIPS"
            break
        }

        # Amazon.AlexaForBusiness.ConferenceProviderType
        {
            ($_ -eq "New-ALXBConferenceProvider/ConferenceProviderType") -Or
            ($_ -eq "Update-ALXBConferenceProvider/ConferenceProviderType")
        }
        {
            $v = "BLUEJEANS","CHIME","CUSTOM","FUZE","GOOGLE_HANGOUTS","POLYCOM","RINGCENTRAL","SKYPE_FOR_BUSINESS","WEBEX","ZOOM"
            break
        }

        # Amazon.AlexaForBusiness.DeviceEventType
        "Get-ALXBDeviceEventList/EventType"
        {
            $v = "CONNECTION_STATUS","DEVICE_STATUS"
            break
        }

        # Amazon.AlexaForBusiness.DeviceUsageType
        "Remove-ALXBDeviceUsageData/DeviceUsageType"
        {
            $v = "VOICE"
            break
        }

        # Amazon.AlexaForBusiness.DistanceUnit
        {
            ($_ -eq "New-ALXBProfile/DistanceUnit") -Or
            ($_ -eq "Update-ALXBProfile/DistanceUnit")
        }
        {
            $v = "IMPERIAL","METRIC"
            break
        }

        # Amazon.AlexaForBusiness.EnablementTypeFilter
        "Get-ALXBSkillList/EnablementType"
        {
            $v = "ENABLED","PENDING"
            break
        }

        # Amazon.AlexaForBusiness.EndOfMeetingReminderType
        {
            ($_ -eq "New-ALXBProfile/MeetingRoomConfiguration_EndOfMeetingReminder_ReminderType") -Or
            ($_ -eq "Update-ALXBProfile/MeetingRoomConfiguration_EndOfMeetingReminder_ReminderType")
        }
        {
            $v = "ANNOUNCEMENT_TIME_CHECK","ANNOUNCEMENT_VARIABLE_TIME_LEFT","CHIME","KNOCK"
            break
        }

        # Amazon.AlexaForBusiness.NetworkEapMethod
        "New-ALXBNetworkProfile/EapMethod"
        {
            $v = "EAP_TLS"
            break
        }

        # Amazon.AlexaForBusiness.NetworkSecurityType
        "New-ALXBNetworkProfile/SecurityType"
        {
            $v = "OPEN","WEP","WPA2_ENTERPRISE","WPA2_PSK","WPA_PSK"
            break
        }

        # Amazon.AlexaForBusiness.RequirePin
        {
            ($_ -eq "New-ALXBConferenceProvider/MeetingSetting_RequirePin") -Or
            ($_ -eq "Update-ALXBConferenceProvider/MeetingSetting_RequirePin")
        }
        {
            $v = "NO","OPTIONAL","YES"
            break
        }

        # Amazon.AlexaForBusiness.SkillTypeFilter
        "Get-ALXBSkillList/SkillType"
        {
            $v = "ALL","PRIVATE","PUBLIC"
            break
        }

        # Amazon.AlexaForBusiness.TemperatureUnit
        {
            ($_ -eq "New-ALXBProfile/TemperatureUnit") -Or
            ($_ -eq "Update-ALXBProfile/TemperatureUnit")
        }
        {
            $v = "CELSIUS","FAHRENHEIT"
            break
        }

        # Amazon.AlexaForBusiness.WakeWord
        {
            ($_ -eq "New-ALXBProfile/WakeWord") -Or
            ($_ -eq "Update-ALXBProfile/WakeWord")
        }
        {
            $v = "ALEXA","AMAZON","COMPUTER","ECHO"
            break
        }


    }

    $v |
        Where-Object { $_ -like "$wordToComplete*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$ALXB_map = @{
    "ConferenceProviderType"=@("New-ALXBConferenceProvider","Update-ALXBConferenceProvider")
    "ContentRange_Interval"=@("New-ALXBBusinessReportSchedule")
    "DeviceUsageType"=@("Remove-ALXBDeviceUsageData")
    "DistanceUnit"=@("New-ALXBProfile","Update-ALXBProfile")
    "EapMethod"=@("New-ALXBNetworkProfile")
    "EnablementType"=@("Get-ALXBSkillList")
    "EventType"=@("Get-ALXBDeviceEventList")
    "Format"=@("New-ALXBBusinessReportSchedule","Update-ALXBBusinessReportSchedule")
    "IPDialIn_CommsProtocol"=@("New-ALXBConferenceProvider","Update-ALXBConferenceProvider")
    "MeetingRoomConfiguration_EndOfMeetingReminder_ReminderType"=@("New-ALXBProfile","Update-ALXBProfile")
    "MeetingSetting_RequirePin"=@("New-ALXBConferenceProvider","Update-ALXBConferenceProvider")
    "SecurityType"=@("New-ALXBNetworkProfile")
    "SkillType"=@("Get-ALXBSkillList")
    "TemperatureUnit"=@("New-ALXBProfile","Update-ALXBProfile")
    "WakeWord"=@("New-ALXBProfile","Update-ALXBProfile")
}

_awsArgumentCompleterRegistration $ALXB_Completers $ALXB_map

$ALXB_SelectCompleters = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    $cmdletType = Invoke-Expression "[Amazon.PowerShell.Cmdlets.ALXB.$($commandName.Replace('-', ''))Cmdlet]"
    if (-not $cmdletType) {
        return
    }
    $awsCmdletAttribute = $cmdletType.GetCustomAttributes([Amazon.PowerShell.Common.AWSCmdletAttribute], $false)
    if (-not $awsCmdletAttribute) {
        return
    }
    $type = $awsCmdletAttribute.SelectReturnType
    if (-not $type) {
        return
    }

    $splitSelect = $wordToComplete -Split '\.'
    $splitSelect | Select-Object -First ($splitSelect.Length - 1) | ForEach-Object {
        $propertyName = $_
        $properties = $type.GetProperties(('Instance', 'Public', 'DeclaredOnly')) | Where-Object { $_.Name -ieq $propertyName }
        if ($properties.Length -ne 1) {
            break
        }
        $type = $properties.PropertyType
        $prefix += "$($properties.Name)."

        $asEnumerableType = $type.GetInterface('System.Collections.Generic.IEnumerable`1')
        if ($asEnumerableType -and $type -ne [System.String]) {
            $type =  $asEnumerableType.GetGenericArguments()[0]
        }
    }

    $v = @( '*' )
    $properties = $type.GetProperties(('Instance', 'Public', 'DeclaredOnly')).Name | Sort-Object
    if ($properties) {
        $v += ($properties | ForEach-Object { $prefix + $_ })
    }
    $parameters = $cmdletType.GetProperties(('Instance', 'Public')) | Where-Object { $_.GetCustomAttributes([System.Management.Automation.ParameterAttribute], $true) } | Select-Object -ExpandProperty Name | Sort-Object
    if ($parameters) {
        $v += ($parameters | ForEach-Object { "^$_" })
    }

    $v |
        Where-Object { $_ -match "^$([System.Text.RegularExpressions.Regex]::Escape($wordToComplete)).*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$ALXB_SelectMap = @{
    "Select"=@("Approve-ALXBSkill",
               "Add-ALXBContactToAddressBook",
               "Add-ALXBDeviceToNetworkProfile",
               "Add-ALXBDeviceToRoom",
               "Add-ALXBSkillGroupToRoom",
               "Add-ALXBSkillToSkillGroup",
               "Add-ALXBSkillToUser",
               "New-ALXBAddressBook",
               "New-ALXBBusinessReportSchedule",
               "New-ALXBConferenceProvider",
               "New-ALXBContact",
               "New-ALXBGatewayGroup",
               "New-ALXBNetworkProfile",
               "New-ALXBProfile",
               "New-ALXBRoom",
               "New-ALXBSkillGroup",
               "New-ALXBUser",
               "Remove-ALXBAddressBook",
               "Remove-ALXBBusinessReportSchedule",
               "Remove-ALXBConferenceProvider",
               "Remove-ALXBContact",
               "Remove-ALXBDevice",
               "Remove-ALXBDeviceUsageData",
               "Remove-ALXBGatewayGroup",
               "Remove-ALXBNetworkProfile",
               "Remove-ALXBProfile",
               "Remove-ALXBRoom",
               "Remove-ALXBRoomSkillParameter",
               "Remove-ALXBSkillAuthorization",
               "Remove-ALXBSkillGroup",
               "Remove-ALXBUser",
               "Remove-ALXBContactFromAddressBook",
               "Remove-ALXBDeviceFromRoom",
               "Remove-ALXBSkillFromSkillGroup",
               "Remove-ALXBSkillFromUser",
               "Remove-ALXBSkillGroupFromRoom",
               "Remove-ALXBSmartHomeAppliance",
               "Get-ALXBAddressBook",
               "Get-ALXBConferencePreference",
               "Get-ALXBConferenceProvider",
               "Get-ALXBContact",
               "Get-ALXBDevice",
               "Get-ALXBGateway",
               "Get-ALXBGatewayGroup",
               "Get-ALXBInvitationConfiguration",
               "Get-ALXBNetworkProfile",
               "Get-ALXBProfile",
               "Get-ALXBRoom",
               "Get-ALXBRoomSkillParameter",
               "Get-ALXBSkillGroup",
               "Get-ALXBBusinessReportScheduleList",
               "Get-ALXBConferenceProviderList",
               "Get-ALXBDeviceEventList",
               "Get-ALXBGatewayGroupList",
               "Get-ALXBGatewayList",
               "Get-ALXBSkillList",
               "Get-ALXBSkillsStoreCategoryList",
               "Get-ALXBSkillsStoreSkillListByCategory",
               "Get-ALXBSmartHomeApplianceList",
               "Get-ALXBTagList",
               "Write-ALXBConferencePreference",
               "Write-ALXBInvitationConfiguration",
               "Set-ALXBRoomSkillParameter",
               "Write-ALXBSkillAuthorization",
               "Register-ALXBAVSDevice",
               "Deny-ALXBSkill",
               "Resolve-ALXBRoom",
               "Revoke-ALXBInvitation",
               "Search-ALXBAddressBook",
               "Search-ALXBContact",
               "Find-ALXBDevice",
               "Search-ALXBNetworkProfile",
               "Find-ALXBProfile",
               "Find-ALXBRoom",
               "Find-ALXBSkillGroup",
               "Find-ALXBUser",
               "Send-ALXBAnnouncement",
               "Send-ALXBInvitation",
               "Start-ALXBDeviceSync",
               "Start-ALXBSmartHomeApplianceDiscovery",
               "Add-ALXBResourceTag",
               "Remove-ALXBResourceTag",
               "Update-ALXBAddressBook",
               "Update-ALXBBusinessReportSchedule",
               "Update-ALXBConferenceProvider",
               "Update-ALXBContact",
               "Update-ALXBDevice",
               "Update-ALXBGateway",
               "Update-ALXBGatewayGroup",
               "Update-ALXBNetworkProfile",
               "Update-ALXBProfile",
               "Update-ALXBRoom",
               "Update-ALXBSkillGroup")
}

_awsArgumentCompleterRegistration $ALXB_SelectCompleters $ALXB_SelectMap


# SIG # Begin signature block
# MIIcUAYJKoZIhvcNAQcCoIIcQTCCHD0CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAMG+T3BlKxRG5E
# 43fYU/A5l8IXgvoAHjmD1spNssuX3qCCF0cwggS5MIIDoaADAgECAhArd4OFAE9M
# ppHAfzWQwHt/MA0GCSqGSIb3DQEBCwUAMIGEMQswCQYDVQQGEwJVUzEdMBsGA1UE
# ChMUU3ltYW50ZWMgQ29ycG9yYXRpb24xHzAdBgNVBAsTFlN5bWFudGVjIFRydXN0
# IE5ldHdvcmsxNTAzBgNVBAMTLFN5bWFudGVjIENsYXNzIDMgU0hBMjU2IENvZGUg
# U2lnbmluZyBDQSAtIEcyMB4XDTE3MDcxMDAwMDAwMFoXDTIwMDcxMDIzNTk1OVow
# ajELMAkGA1UEBhMCVVMxEzARBgNVBAgMCldhc2hpbmd0b24xEDAOBgNVBAcMB1Nl
# YXR0bGUxGTAXBgNVBAoMEEFtYXpvbi5jb20sIEluYy4xGTAXBgNVBAMMEEFtYXpv
# bi5jb20sIEluYy4wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC18TJW
# m2/aGpvb+TP2CZMg49X/5bjDAgPxWlAs7bqDyZnRYJork4rLmejpeJu+2BhRjZeK
# OirT4XveddBsdL1/TR+FKp8BXEsrm0wcR4yT6mNHJ9yCgC1YBNG91bZ75kRIT+46
# chbC7eNI5703wi8ejxe2KvvOERppBTaFStVJuAHab69dvFma8qE3s7wbqPdQ5eTI
# +Xm0bXp8cObS+vj+hf3N2pfDNWM8ITva3kbowGoCW0rKzpf7fBGtBOKnOCCSL0yC
# AOwLlFkslemVyrT1/HTDjOTKCro016HxOPddA4cefvr2ZhGlRZQQHg7wMdG7TpZX
# ueQ6LoS9UxlzCYHFAgMBAAGjggE+MIIBOjAJBgNVHRMEAjAAMA4GA1UdDwEB/wQE
# AwIHgDATBgNVHSUEDDAKBggrBgEFBQcDAzBhBgNVHSAEWjBYMFYGBmeBDAEEATBM
# MCMGCCsGAQUFBwIBFhdodHRwczovL2Quc3ltY2IuY29tL2NwczAlBggrBgEFBQcC
# AjAZDBdodHRwczovL2Quc3ltY2IuY29tL3JwYTAfBgNVHSMEGDAWgBTUwAYiSes5
# S92T4lyhuEd2CXIDWDArBgNVHR8EJDAiMCCgHqAchhpodHRwOi8vcmIuc3ltY2Iu
# Y29tL3JiLmNybDBXBggrBgEFBQcBAQRLMEkwHwYIKwYBBQUHMAGGE2h0dHA6Ly9y
# Yi5zeW1jZC5jb20wJgYIKwYBBQUHMAKGGmh0dHA6Ly9yYi5zeW1jYi5jb20vcmIu
# Y3J0MA0GCSqGSIb3DQEBCwUAA4IBAQC+C4TcK44ph2QQK/1f65jOR23DtSBC3y9a
# bzRHdo4qxmcAW5ot69os7GJfzgVsA5lh1IT4+aMuGYA4GTcF6iTSOMgFSRwP8urI
# N2BprsWuMJsQ7+Flo3PBRN3dU6idOlFKOfuRxgIHRn47t2yRan6XTNhfiWl84DrD
# NjSTnk4c72Gzu0hiwQB9OTsf8CQP3Shb3ZzcAOmeUB01TFoJU34PfJpKlKQZeQIi
# W5WdPPr1G/0cAHgejDHtdNYcSqIWfoGeYgCxUg1IFpp1VmPlqb/de8QKONzPDK6/
# 5hulSGqGgpRmEkwGGJiQeOB51GxYZRCPq3hN3UJ6N0A+hYzj7yspMIIFRzCCBC+g
# AwIBAgIQfBs1NUrn23TnQV8RacprqDANBgkqhkiG9w0BAQsFADCBvTELMAkGA1UE
# BhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQLExZWZXJpU2ln
# biBUcnVzdCBOZXR3b3JrMTowOAYDVQQLEzEoYykgMjAwOCBWZXJpU2lnbiwgSW5j
# LiAtIEZvciBhdXRob3JpemVkIHVzZSBvbmx5MTgwNgYDVQQDEy9WZXJpU2lnbiBV
# bml2ZXJzYWwgUm9vdCBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTAeFw0xNDA3MjIw
# MDAwMDBaFw0yNDA3MjEyMzU5NTlaMIGEMQswCQYDVQQGEwJVUzEdMBsGA1UEChMU
# U3ltYW50ZWMgQ29ycG9yYXRpb24xHzAdBgNVBAsTFlN5bWFudGVjIFRydXN0IE5l
# dHdvcmsxNTAzBgNVBAMTLFN5bWFudGVjIENsYXNzIDMgU0hBMjU2IENvZGUgU2ln
# bmluZyBDQSAtIEcyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA15VD
# 1NzfZ645+1KktiYxBHDpt45bKro3aTWVj7vAMOeG2HO73+vRdj+KVo7rLUvwVxhO
# sY2lM9MLdSPVankn3aPT9w6HZbXerRzx9TW0IlGvIqHBXUuQf8BZTqudeakC1x5J
# sTtNh/7CeKu/71KunK8I2TnlmlE+aV8wEE5xY2xY4fAgMxsPdL5byxLh24zEgJRy
# u/ZFmp7BJQv7oxye2KYJcHHswEdMj33D3hnOPu4Eco4X0//wsgUyGUzTsByf/qV4
# IEJwQbAmjG8AyDoAEUF6QbCnipEEoJl49He082Aq5mxQBLcUYP8NUfSoi4T+Idpc
# Xn31KXlPsER0b21y/wIDAQABo4IBeDCCAXQwLgYIKwYBBQUHAQEEIjAgMB4GCCsG
# AQUFBzABhhJodHRwOi8vcy5zeW1jZC5jb20wEgYDVR0TAQH/BAgwBgEB/wIBADBm
# BgNVHSAEXzBdMFsGC2CGSAGG+EUBBxcDMEwwIwYIKwYBBQUHAgEWF2h0dHBzOi8v
# ZC5zeW1jYi5jb20vY3BzMCUGCCsGAQUFBwICMBkaF2h0dHBzOi8vZC5zeW1jYi5j
# b20vcnBhMDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9zLnN5bWNiLmNvbS91bml2
# ZXJzYWwtcm9vdC5jcmwwEwYDVR0lBAwwCgYIKwYBBQUHAwMwDgYDVR0PAQH/BAQD
# AgEGMCkGA1UdEQQiMCCkHjAcMRowGAYDVQQDExFTeW1hbnRlY1BLSS0xLTcyNDAd
# BgNVHQ4EFgQU1MAGIknrOUvdk+JcobhHdglyA1gwHwYDVR0jBBgwFoAUtnf6aUhH
# n1MS1cLqBzJ2B9GXBxkwDQYJKoZIhvcNAQELBQADggEBAH/ryqfqi3ZC6z6OIFQw
# 47e53PpIPhbHD0WVEM0nhqNm8wLtcfiqwlWXkXCD+VJ+Umk8yfHglEaAGLuh1KRW
# pvMdAJHVhvNIh+DLxDRoIF60y/kF7ZyvcFMnueg+flGgaXGL3FHtgDolMp9Er25D
# KNMhdbuX2IuLjP6pBEYEhfcVnEsRjcQsF/7Vbn+a4laS8ZazrS359N/aiZnOsjhE
# wPdHe8olufoqaDObUHLeqJ/UzSwLNL2LMHhA4I2OJxuQbxq+CBWBXesv4lHnUR7J
# eCnnHmW/OO8BSgEJJA4WxBR5wUE3NNA9kVKUneFo7wjw4mmcZ26QCxqTcdQmAsPA
# WiMwggZqMIIFUqADAgECAhADAZoCOv9YsWvW1ermF/BmMA0GCSqGSIb3DQEBBQUA
# MGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsT
# EHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0IEFzc3VyZWQgSUQg
# Q0EtMTAeFw0xNDEwMjIwMDAwMDBaFw0yNDEwMjIwMDAwMDBaMEcxCzAJBgNVBAYT
# AlVTMREwDwYDVQQKEwhEaWdpQ2VydDElMCMGA1UEAxMcRGlnaUNlcnQgVGltZXN0
# YW1wIFJlc3BvbmRlcjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKNk
# Xfx8s+CCNeDg9sYq5kl1O8xu4FOpnx9kWeZ8a39rjJ1V+JLjntVaY1sCSVDZg85v
# Zu7dy4XpX6X51Id0iEQ7Gcnl9ZGfxhQ5rCTqqEsskYnMXij0ZLZQt/USs3OWCmej
# vmGfrvP9Enh1DqZbFP1FI46GRFV9GIYFjFWHeUhG98oOjafeTl/iqLYtWQJhiGFy
# GGi5uHzu5uc0LzF3gTAfuzYBje8n4/ea8EwxZI3j6/oZh6h+z+yMDDZbesF6uHjH
# yQYuRhDIjegEYNu8c3T6Ttj+qkDxss5wRoPp2kChWTrZFQlXmVYwk/PJYczQCMxr
# 7GJCkawCwO+k8IkRj3cCAwEAAaOCAzUwggMxMA4GA1UdDwEB/wQEAwIHgDAMBgNV
# HRMBAf8EAjAAMBYGA1UdJQEB/wQMMAoGCCsGAQUFBwMIMIIBvwYDVR0gBIIBtjCC
# AbIwggGhBglghkgBhv1sBwEwggGSMCgGCCsGAQUFBwIBFhxodHRwczovL3d3dy5k
# aWdpY2VydC5jb20vQ1BTMIIBZAYIKwYBBQUHAgIwggFWHoIBUgBBAG4AeQAgAHUA
# cwBlACAAbwBmACAAdABoAGkAcwAgAEMAZQByAHQAaQBmAGkAYwBhAHQAZQAgAGMA
# bwBuAHMAdABpAHQAdQB0AGUAcwAgAGEAYwBjAGUAcAB0AGEAbgBjAGUAIABvAGYA
# IAB0AGgAZQAgAEQAaQBnAGkAQwBlAHIAdAAgAEMAUAAvAEMAUABTACAAYQBuAGQA
# IAB0AGgAZQAgAFIAZQBsAHkAaQBuAGcAIABQAGEAcgB0AHkAIABBAGcAcgBlAGUA
# bQBlAG4AdAAgAHcAaABpAGMAaAAgAGwAaQBtAGkAdAAgAGwAaQBhAGIAaQBsAGkA
# dAB5ACAAYQBuAGQAIABhAHIAZQAgAGkAbgBjAG8AcgBwAG8AcgBhAHQAZQBkACAA
# aABlAHIAZQBpAG4AIABiAHkAIAByAGUAZgBlAHIAZQBuAGMAZQAuMAsGCWCGSAGG
# /WwDFTAfBgNVHSMEGDAWgBQVABIrE5iymQftHt+ivlcNK2cCzTAdBgNVHQ4EFgQU
# YVpNJLZJMp1KKnkag0v0HonByn0wfQYDVR0fBHYwdDA4oDagNIYyaHR0cDovL2Ny
# bDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEQ0EtMS5jcmwwOKA2oDSG
# Mmh0dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRENBLTEu
# Y3JsMHcGCCsGAQUFBwEBBGswaTAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGln
# aWNlcnQuY29tMEEGCCsGAQUFBzAChjVodHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5j
# b20vRGlnaUNlcnRBc3N1cmVkSURDQS0xLmNydDANBgkqhkiG9w0BAQUFAAOCAQEA
# nSV+GzNNsiaBXJuGziMgD4CH5Yj//7HUaiwx7ToXGXEXzakbvFoWOQCd42yE5FpA
# +94GAYw3+puxnSR+/iCkV61bt5qwYCbqaVchXTQvH3Gwg5QZBWs1kBCge5fH9j/n
# 4hFBpr1i2fAnPTgdKG86Ugnw7HBi02JLsOBzppLA044x2C/jbRcTBu7kA7YUq/OP
# Q6dxnSHdFMoVXZJB2vkPgdGZdA0mxA5/G7X1oPHGdwYoFenYk+VVFvC7Cqsc21xI
# J2bIo4sKHOWV2q7ELlmgYd3a822iYemKC23sEhi991VUQAOSK2vCUcIKSK+w1G7g
# 9BQKOhvjjz3Kr2qNe9zYRDCCBs0wggW1oAMCAQICEAb9+QOWA63qAArrPye7uhsw
# DQYJKoZIhvcNAQEFBQAwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0
# IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNl
# cnQgQXNzdXJlZCBJRCBSb290IENBMB4XDTA2MTExMDAwMDAwMFoXDTIxMTExMDAw
# MDAwMFowYjELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcG
# A1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEhMB8GA1UEAxMYRGlnaUNlcnQgQXNzdXJl
# ZCBJRCBDQS0xMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA6IItmfnK
# wkKVpYBzQHDSnlZUXKnE0kEGj8kz/E1FkVyBn+0snPgWWd+etSQVwpi5tHdJ3InE
# Ctqvy15r7a2wcTHrzzpADEZNk+yLejYIA6sMNP4YSYL+x8cxSIB8HqIPkg5QycaH
# 6zY/2DDD/6b3+6LNb3Mj/qxWBZDwMiEWicZwiPkFl32jx0PdAug7Pe2xQaPtP77b
# lUjE7h6z8rwMK5nQxl0SQoHhg26Ccz8mSxSQrllmCsSNvtLOBq6thG9IhJtPQLnx
# TPKvmPv2zkBdXPao8S+v7Iki8msYZbHBc63X8djPHgp0XEK4aH631XcKJ1Z8D2Kk
# PzIUYJX9BwSiCQIDAQABo4IDejCCA3YwDgYDVR0PAQH/BAQDAgGGMDsGA1UdJQQ0
# MDIGCCsGAQUFBwMBBggrBgEFBQcDAgYIKwYBBQUHAwMGCCsGAQUFBwMEBggrBgEF
# BQcDCDCCAdIGA1UdIASCAckwggHFMIIBtAYKYIZIAYb9bAABBDCCAaQwOgYIKwYB
# BQUHAgEWLmh0dHA6Ly93d3cuZGlnaWNlcnQuY29tL3NzbC1jcHMtcmVwb3NpdG9y
# eS5odG0wggFkBggrBgEFBQcCAjCCAVYeggFSAEEAbgB5ACAAdQBzAGUAIABvAGYA
# IAB0AGgAaQBzACAAQwBlAHIAdABpAGYAaQBjAGEAdABlACAAYwBvAG4AcwB0AGkA
# dAB1AHQAZQBzACAAYQBjAGMAZQBwAHQAYQBuAGMAZQAgAG8AZgAgAHQAaABlACAA
# RABpAGcAaQBDAGUAcgB0ACAAQwBQAC8AQwBQAFMAIABhAG4AZAAgAHQAaABlACAA
# UgBlAGwAeQBpAG4AZwAgAFAAYQByAHQAeQAgAEEAZwByAGUAZQBtAGUAbgB0ACAA
# dwBoAGkAYwBoACAAbABpAG0AaQB0ACAAbABpAGEAYgBpAGwAaQB0AHkAIABhAG4A
# ZAAgAGEAcgBlACAAaQBuAGMAbwByAHAAbwByAGEAdABlAGQAIABoAGUAcgBlAGkA
# bgAgAGIAeQAgAHIAZQBmAGUAcgBlAG4AYwBlAC4wCwYJYIZIAYb9bAMVMBIGA1Ud
# EwEB/wQIMAYBAf8CAQAweQYIKwYBBQUHAQEEbTBrMCQGCCsGAQUFBzABhhhodHRw
# Oi8vb2NzcC5kaWdpY2VydC5jb20wQwYIKwYBBQUHMAKGN2h0dHA6Ly9jYWNlcnRz
# LmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcnQwgYEGA1Ud
# HwR6MHgwOqA4oDaGNGh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFz
# c3VyZWRJRFJvb3RDQS5jcmwwOqA4oDaGNGh0dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNv
# bS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcmwwHQYDVR0OBBYEFBUAEisTmLKZ
# B+0e36K+Vw0rZwLNMB8GA1UdIwQYMBaAFEXroq/0ksuCMS1Ri6enIZ3zbcgPMA0G
# CSqGSIb3DQEBBQUAA4IBAQBGUD7Jtygkpzgdtlspr1LPUukxR6tWXHvVDQtBs+/s
# dR90OPKyXGGinJXDUOSCuSPRujqGcq04eKx1XRcXNHJHhZRW0eu7NoR3zCSl8wQZ
# Vann4+erYs37iy2QwsDStZS9Xk+xBdIOPRqpFFumhjFiqKgz5Js5p8T1zh14dpQl
# c+Qqq8+cdkvtX8JLFuRLcEwAiR78xXm8TBJX/l/hHrwCXaj++wc4Tw3GXZG5D2dF
# zdaD7eeSDY2xaYxP+1ngIw/Sqq4AfO6cQg7PkdcntxbuD8O9fAqg7iwIVYUiuOsY
# Gk38KiGtSTGDR5V3cdyxG0tLHBCcdxTBnU8vWpUIKRAmMYIEXzCCBFsCAQEwgZkw
# gYQxCzAJBgNVBAYTAlVTMR0wGwYDVQQKExRTeW1hbnRlYyBDb3Jwb3JhdGlvbjEf
# MB0GA1UECxMWU3ltYW50ZWMgVHJ1c3QgTmV0d29yazE1MDMGA1UEAxMsU3ltYW50
# ZWMgQ2xhc3MgMyBTSEEyNTYgQ29kZSBTaWduaW5nIENBIC0gRzICECt3g4UAT0ym
# kcB/NZDAe38wDQYJYIZIAWUDBAIBBQCggYQwGAYKKwYBBAGCNwIBDDEKMAigAoAA
# oQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4w
# DAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgslgDk1YPPAo55rZgpv8StvjV
# Ff3nGVRuJfQ5Y+NyC7EwDQYJKoZIhvcNAQEBBQAEggEAMNJAXfE4Lfg6zsVd9xaO
# RVtrNpHMRexzdpkQGOLOzsgwGm1s7Td2Cj+f4zaAkfeeA3AE/rujOmfD5UH+Dytk
# rESGNKZlVosLyBKkGBGxwvcoLQITMVAYa1lUuQ4O9wBDAfJse3jkCF5WMzaQcdAA
# wNO0qErZ1hMP8OV86AP8kMKJFrm7/OXatbbL1OvsKno5o3JLyT+LwAzocRT9Iav8
# YwvdEu+AEhefzCsRY65l3+aqD2bW0Gl4bAnTwzdZaMA/pac/m5eKobSKxnXlA1+/
# IfogmzTW+fBgo/GibicWuGtM4/KV7xW70g2+bob9jdaHewDarG4xN0HcsTRrYikh
# MqGCAg8wggILBgkqhkiG9w0BCQYxggH8MIIB+AIBATB2MGIxCzAJBgNVBAYTAlVT
# MRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5j
# b20xITAfBgNVBAMTGERpZ2lDZXJ0IEFzc3VyZWQgSUQgQ0EtMQIQAwGaAjr/WLFr
# 1tXq5hfwZjAJBgUrDgMCGgUAoF0wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAc
# BgkqhkiG9w0BCQUxDxcNMjAwNjEwMjMxNjE0WjAjBgkqhkiG9w0BCQQxFgQUUevQ
# iqjEfsIhEI3I0a3WCTPr4dYwDQYJKoZIhvcNAQEBBQAEggEAbuAR3RR8c/3cHiPA
# 0bw4l+wIJqGP8lX5O7/NCFj5FY3RuYKsfNg0cpjN/ZegsFGzTP+LRGkFSQVz+YHq
# 3vhghHTdpv0Lg+6v9J2zLIzPQxDJgh9jync7gmLM4SHGjfGmxcaD5406iKtgeUl7
# YKgbSrVee2Qq8RQ/d5wjOX9sk8XX8s/XBagLbvv8QZFyP1RBKEWe/WwgxwvXPnu7
# YUDYcNE0oX83xqzD/UTG9oMtwkeNVHUCNT4Nmmu05OKLLt0tciQTpxHgntnfC9HB
# dVNQX+/QeqZADy2CJsfmpfB5yLBA6KNBIYhERyKYGS/JJ4sYM8aUZS3wtFWA68AN
# ScVDrw==
# SIG # End signature block
