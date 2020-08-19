#
# Module manifest for module 'AWS.Tools.IoT'
#

@{
    # Script module or binary module file associated with this manifest
    RootModule = 'AWS.Tools.IoT.dll'

    # Supported PSEditions
    CompatiblePSEditions = @('Core', 'Desktop')

    # Version number of this module.
    ModuleVersion = '4.0.6.0'

    # ID used to uniquely identify this module
    GUID = 'd75b8399-46ee-434e-8fe4-43ef3faa5780'

    # Author of this module
    Author = 'Amazon.com, Inc'

    # Company or vendor of this module
    CompanyName = 'Amazon.com, Inc'

    # Copyright statement for this module
    Copyright = 'Copyright 2012-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.'

    # Description of the functionality provided by this module
    Description = 'The IoT module of AWS Tools for PowerShell lets developers and administrators manage AWS IoT from the PowerShell scripting environment. In order to manage each AWS service, install the corresponding module (e.g. AWS.Tools.EC2, AWS.Tools.S3...).
The module AWS.Tools.Installer (https://www.powershellgallery.com/packages/AWS.Tools.Installer/) makes it easier to install, update and uninstall the AWS.Tools modules.
This version of AWS Tools for PowerShell is compatible with Windows PowerShell 5.1+ and PowerShell Core 6+ on Windows, Linux and macOS. When running on Windows PowerShell, .NET Framework 4.7.2 or newer is required. Alternative modules AWSPowerShell.NetCore and AWSPowerShell, provide support for all AWS services from a single module and also support older versions of Windows PowerShell and .NET Framework.'

    # Minimum version of the PowerShell engine required by this module
    PowerShellVersion = '5.1'

    # Name of the PowerShell host required by this module
    PowerShellHostName = ''

    # Minimum version of the PowerShell host required by this module
    PowerShellHostVersion = ''

    # Minimum version of the .NET Framework required by this module
    DotNetFrameworkVersion = '4.7.2'

    # Minimum version of the common language runtime (CLR) required by this module
    CLRVersion = ''

    # Processor architecture (None, X86, Amd64, IA64) required by this module
    ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules = @(
        @{
            ModuleName = 'AWS.Tools.Common';
            RequiredVersion = '4.0.6.0';
            Guid = 'e5b05bf3-9eee-47b2-81f2-41ddc0501b86' }
    )

    # Assemblies that must be loaded prior to importing this module.
    RequiredAssemblies = @(
        'AWSSDK.IoT.dll'
    )

    # Script files (.ps1) that are run in the caller's environment prior to importing this module
    ScriptsToProcess = @(

    )

    # Type files (.ps1xml) to be loaded when importing this module
    TypesToProcess = @(

    )

    # Format files (.ps1xml) to be loaded when importing this module
    FormatsToProcess = @(
        'AWS.Tools.IoT.Format.ps1xml'
    )

    # Modules to import as nested modules of the module specified in ModuleToProcess
    NestedModules = @(
        'AWS.Tools.IoT.Completers.psm1',
        'AWS.Tools.IoT.Aliases.psm1'
    )

    # Functions to export from this module
    FunctionsToExport = ''

    # Cmdlets to export from this module
    CmdletsToExport = @(
        'Add-IOTPolicy', 
        'Add-IOTPrincipalPolicy', 
        'Add-IOTResourceTag', 
        'Add-IOTTargetsWithJob', 
        'Add-IOTThingPrincipal', 
        'Add-IOTThingToBillingGroup', 
        'Add-IOTThingToThingGroup', 
        'Clear-IOTDefaultAuthorizer', 
        'Confirm-IOTCertificateTransfer', 
        'Confirm-IOTTopicRuleDestination', 
        'Deny-IOTCertificateTransfer', 
        'Disable-IOTTopicRule', 
        'Dismount-IOTPolicy', 
        'Dismount-IOTSecurityProfile', 
        'Enable-IOTTopicRule', 
        'Get-IOTAccountAuditConfiguration', 
        'Get-IOTActiveViolationList', 
        'Get-IOTAttachedPolicyList', 
        'Get-IOTAuditFinding', 
        'Get-IOTAuditFindingList', 
        'Get-IOTAuditMitigationActionsExecutionList', 
        'Get-IOTAuditMitigationActionsTask', 
        'Get-IOTAuditMitigationActionsTaskList', 
        'Get-IOTAuditTask', 
        'Get-IOTAuthorizer', 
        'Get-IOTAuthorizerList', 
        'Get-IOTBillingGroup', 
        'Get-IOTBillingGroupList', 
        'Get-IOTCACertificate', 
        'Get-IOTCACertificateList', 
        'Get-IOTCardinality', 
        'Get-IOTCertificate', 
        'Get-IOTCertificateList', 
        'Get-IOTCertificateListByCA', 
        'Get-IOTDefaultAuthorizer', 
        'Get-IOTDimension', 
        'Get-IOTDimensionList', 
        'Get-IOTDomainConfiguration', 
        'Get-IOTDomainConfigurationList', 
        'Get-IOTEffectivePolicy', 
        'Get-IOTEndpoint', 
        'Get-IOTEventConfiguration', 
        'Get-IOTIndex', 
        'Get-IOTIndexingConfiguration', 
        'Get-IOTIndexList', 
        'Get-IOTJob', 
        'Get-IOTJobDocument', 
        'Get-IOTJobExecution', 
        'Get-IOTJobExecutionsForJobList', 
        'Get-IOTJobExecutionsForThingList', 
        'Get-IOTJobList', 
        'Get-IOTLoggingOption', 
        'Get-IOTMitigationAction', 
        'Get-IOTMitigationActionList', 
        'Get-IOTOTAUpdate', 
        'Get-IOTOTAUpdateList', 
        'Get-IOTOutgoingCertificate', 
        'Get-IOTPercentile', 
        'Get-IOTPolicy', 
        'Get-IOTPolicyList', 
        'Get-IOTPolicyPrincipalList', 
        'Get-IOTPolicyVersion', 
        'Get-IOTPolicyVersionList', 
        'Get-IOTPrincipalPolicyList', 
        'Get-IOTPrincipalThingList', 
        'Get-IOTProvisioningTemplate', 
        'Get-IOTProvisioningTemplateList', 
        'Get-IOTProvisioningTemplateVersion', 
        'Get-IOTProvisioningTemplateVersionList', 
        'Get-IOTRegistrationCode', 
        'Get-IOTRoleAlias', 
        'Get-IOTRoleAliasList', 
        'Get-IOTScheduledAudit', 
        'Get-IOTScheduledAuditList', 
        'Get-IOTSecurityProfile', 
        'Get-IOTSecurityProfileList', 
        'Get-IOTSecurityProfilesForTargetList', 
        'Get-IOTStatistic', 
        'Get-IOTStream', 
        'Get-IOTStreamList', 
        'Get-IOTTagListForResource', 
        'Get-IOTTargetsForPolicyList', 
        'Get-IOTTargetsForSecurityProfileList', 
        'Get-IOTTaskList', 
        'Get-IOTThing', 
        'Get-IOTThingGroup', 
        'Get-IOTThingGroupList', 
        'Get-IOTThingGroupsForThingList', 
        'Get-IOTThingList', 
        'Get-IOTThingPrincipalList', 
        'Get-IOTThingRegistrationTask', 
        'Get-IOTThingRegistrationTaskList', 
        'Get-IOTThingRegistrationTaskReportList', 
        'Get-IOTThingsInBillingGroupList', 
        'Get-IOTThingsInThingGroupList', 
        'Get-IOTThingType', 
        'Get-IOTThingTypeList', 
        'Get-IOTTopicRule', 
        'Get-IOTTopicRuleDestination', 
        'Get-IOTTopicRuleDestinationList', 
        'Get-IOTTopicRuleList', 
        'Get-IOTV2LoggingLevelList', 
        'Get-IOTV2LoggingOption', 
        'Get-IOTViolationEventList', 
        'Mount-IOTSecurityProfile', 
        'New-IOTAuthorizer', 
        'New-IOTBillingGroup', 
        'New-IOTCertificateFromCsr', 
        'New-IOTDimension', 
        'New-IOTDomainConfiguration', 
        'New-IOTDynamicThingGroup', 
        'New-IOTJob', 
        'New-IOTKeysAndCertificate', 
        'New-IOTMitigationAction', 
        'New-IOTOTAUpdate', 
        'New-IOTPolicy', 
        'New-IOTPolicyVersion', 
        'New-IOTProvisioningClaim', 
        'New-IOTProvisioningTemplate', 
        'New-IOTProvisioningTemplateVersion', 
        'New-IOTRoleAlias', 
        'New-IOTScheduledAudit', 
        'New-IOTSecurityProfile', 
        'New-IOTStream', 
        'New-IOTThing', 
        'New-IOTThingGroup', 
        'New-IOTThingType', 
        'New-IOTTopicRule', 
        'New-IOTTopicRuleDestination', 
        'Register-IOTCACertificate', 
        'Register-IOTCertificate', 
        'Register-IOTCertificateWithoutCA', 
        'Register-IOTThing', 
        'Remove-IOTAccountAuditConfiguration', 
        'Remove-IOTAuthorizer', 
        'Remove-IOTBillingGroup', 
        'Remove-IOTCACertificate', 
        'Remove-IOTCertificate', 
        'Remove-IOTDimension', 
        'Remove-IOTDomainConfiguration', 
        'Remove-IOTDynamicThingGroup', 
        'Remove-IOTJob', 
        'Remove-IOTJobExecution', 
        'Remove-IOTMitigationAction', 
        'Remove-IOTOTAUpdate', 
        'Remove-IOTPolicy', 
        'Remove-IOTPolicyVersion', 
        'Remove-IOTPrincipalPolicy', 
        'Remove-IOTProvisioningTemplate', 
        'Remove-IOTProvisioningTemplateVersion', 
        'Remove-IOTRegistrationCode', 
        'Remove-IOTResourceTag', 
        'Remove-IOTRoleAlias', 
        'Remove-IOTScheduledAudit', 
        'Remove-IOTSecurityProfile', 
        'Remove-IOTStream', 
        'Remove-IOTThing', 
        'Remove-IOTThingFromBillingGroup', 
        'Remove-IOTThingFromThingGroup', 
        'Remove-IOTThingGroup', 
        'Remove-IOTThingPrincipal', 
        'Remove-IOTThingType', 
        'Remove-IOTTopicRule', 
        'Remove-IOTTopicRuleDestination', 
        'Remove-IOTV2LoggingLevel', 
        'Request-IOTCertificateTransfer', 
        'Search-IOTIndex', 
        'Set-IOTDefaultAuthorizer', 
        'Set-IOTDefaultPolicyVersion', 
        'Set-IOTLoggingOption', 
        'Set-IOTThingTypeDeprecation', 
        'Set-IOTTopicRule', 
        'Set-IOTV2LoggingLevel', 
        'Set-IOTV2LoggingOption', 
        'Start-IOTAuditMitigationActionsTask', 
        'Start-IOTOnDemandAuditTask', 
        'Start-IOTThingRegistrationTask', 
        'Stop-IOTAuditMitigationActionsTask', 
        'Stop-IOTAuditTask', 
        'Stop-IOTCertificateTransfer', 
        'Stop-IOTJob', 
        'Stop-IOTJobExecution', 
        'Stop-IOTThingRegistrationTask', 
        'Test-IOTAuthorization', 
        'Test-IOTInvokeAuthorizer', 
        'Test-IOTValidSecurityProfileBehavior', 
        'Update-IOTAccountAuditConfiguration', 
        'Update-IOTAuthorizer', 
        'Update-IOTBillingGroup', 
        'Update-IOTCACertificate', 
        'Update-IOTCertificate', 
        'Update-IOTDimension', 
        'Update-IOTDomainConfiguration', 
        'Update-IOTDynamicThingGroup', 
        'Update-IOTEventConfiguration', 
        'Update-IOTIndexingConfiguration', 
        'Update-IOTJob', 
        'Update-IOTMitigationAction', 
        'Update-IOTProvisioningTemplate', 
        'Update-IOTRoleAlias', 
        'Update-IOTScheduledAudit', 
        'Update-IOTSecurityProfile', 
        'Update-IOTStream', 
        'Update-IOTThing', 
        'Update-IOTThingGroup', 
        'Update-IOTThingGroupsForThing', 
        'Update-IOTTopicRuleDestination')

    # Variables to export from this module
    VariablesToExport = '*'

    # Aliases to export from this module
    AliasesToExport = @(
        'Get-IOTLoggingOptions', 
        'Set-IOTLoggingOptions', 
        'Get-IOTAuthorizersList', 
        'Get-IOTAttachedPoliciesList', 
        'Get-IOTIndicesList', 
        'Get-IOTJobsList', 
        'Get-IOTPolicyPrincipalsList', 
        'Get-IOTRoleAliasesList', 
        'Get-IOTThingGroupsList', 
        'Get-IOTThingRegistrationTaskReportsList', 
        'Get-IOTThingRegistrationTasksList', 
        'Get-IOTThingTypesList', 
        'Get-IOTV2LoggingLevelsList', 
        'Get-IOTViolationEventsList')

    # List of all modules packaged with this module
    ModuleList = @()

    # List of all files packaged with this module
    FileList = @(
        'AWS.Tools.IoT.dll-Help.xml'
    )

    # Private data to pass to the module specified in ModuleToProcess
    PrivateData = @{

        PSData = @{
            Tags = @('AWS', 'cloud', 'Windows', 'PSEdition_Desktop', 'PSEdition_Core', 'Linux', 'MacOS', 'Mac')
            LicenseUri = 'https://aws.amazon.com/apache-2-0/'
            ProjectUri = 'https://github.com/aws/aws-tools-for-powershell'
            IconUri = 'https://sdk-for-net.amazonwebservices.com/images/AWSLogo128x128.png'
            ReleaseNotes = 'https://github.com/aws/aws-tools-for-powershell/blob/master/CHANGELOG.md'
        }
    }
}

# SIG # Begin signature block
# MIIcUAYJKoZIhvcNAQcCoIIcQTCCHD0CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCA/ZUAeGpZQl7oi
# YcwLiSClGscLYYEB9m9SZRTeCVseVqCCF0cwggS5MIIDoaADAgECAhArd4OFAE9M
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
# DAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgEJqH5rnHzztG0Lh9CKFXkJ/u
# YCJyrFqA7XT1OG1FcLIwDQYJKoZIhvcNAQEBBQAEggEANsuXxkIVJy7w1LnnVr6y
# 1KTdLelFPWHJi0+vmjLJrfcCkAGfTFz5tsoojQzgIocsJSkKjeE+b/YmNBXp71bq
# uq+lX4cqCpuHVRFUbR6J4wcwrRUugxO28pkLzRsd92uf9KW3LIJvqsTDap7EJWRF
# zKGUq60WFvWGFrqw+wrN08N3FMX4uaLyH4lj8ntGX6T5Ze4GKEwOlPDj7mvpjwic
# b+/RjLoRE1EtBNSLJZMPTK/LdRWX6cJWTIZcPGzXist5gzga8zDQj2AjKT3xy7zr
# 1LVapOAqlhAq88pqI2eoK/M4YzBsNuaP1rusCnVxAqNj/lbfV3dI29RfMBYzLkxn
# j6GCAg8wggILBgkqhkiG9w0BCQYxggH8MIIB+AIBATB2MGIxCzAJBgNVBAYTAlVT
# MRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5j
# b20xITAfBgNVBAMTGERpZ2lDZXJ0IEFzc3VyZWQgSUQgQ0EtMQIQAwGaAjr/WLFr
# 1tXq5hfwZjAJBgUrDgMCGgUAoF0wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAc
# BgkqhkiG9w0BCQUxDxcNMjAwNjEwMjMxNzE4WjAjBgkqhkiG9w0BCQQxFgQUWwiu
# GMhQMArSQsUACvdv9rvUUAAwDQYJKoZIhvcNAQEBBQAEggEAZ6XQ3JfhDY7744bH
# TdRDiBwgWwqpilcEy9mxt+XXdlyWEhMePVaQAsJ2yp9jsKlJS8LgngZAtNB4d7Fp
# 3hKY+vgvMYqynJ+l2g36Zb6FEGqRLXnu38S4gwbac5Q68d5urhzoPDjUVSJxVDIL
# FqKKgHbEgx6nUPfs4/hPj1ilDf7VpNEuTL1lVcEwCEXJnmsjnNT/lFH+x9/w6Oqx
# bfwmjs5czp2FT7hs+RmfdyeFtvDTH8y4fWG6DjbDgmtGGLGehYqlZioCUDzPVBi8
# 9N1xfJLbx+giIDFYxNJOYAjGC/H3Dz9aOVYkc2xsxEES3z0KIJeU3KuqzzhGlBzy
# V5DIUg==
# SIG # End signature block
