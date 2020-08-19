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

# Argument completions for service AWS IoT


$IOT_Completers = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    switch ($("$commandName/$parameterName"))
    {
        # Amazon.IoT.AuditFrequency
        {
            ($_ -eq "New-IOTScheduledAudit/Frequency") -Or
            ($_ -eq "Update-IOTScheduledAudit/Frequency")
        }
        {
            $v = "BIWEEKLY","DAILY","MONTHLY","WEEKLY"
            break
        }

        # Amazon.IoT.AuditMitigationActionsExecutionStatus
        "Get-IOTAuditMitigationActionsExecutionList/ActionStatus"
        {
            $v = "CANCELED","COMPLETED","FAILED","IN_PROGRESS","PENDING","SKIPPED"
            break
        }

        # Amazon.IoT.AuditMitigationActionsTaskStatus
        "Get-IOTAuditMitigationActionsTaskList/TaskStatus"
        {
            $v = "CANCELED","COMPLETED","FAILED","IN_PROGRESS"
            break
        }

        # Amazon.IoT.AuditTaskStatus
        "Get-IOTTaskList/TaskStatus"
        {
            $v = "CANCELED","COMPLETED","FAILED","IN_PROGRESS"
            break
        }

        # Amazon.IoT.AuditTaskType
        "Get-IOTTaskList/TaskType"
        {
            $v = "ON_DEMAND_AUDIT_TASK","SCHEDULED_AUDIT_TASK"
            break
        }

        # Amazon.IoT.AuthorizerStatus
        {
            ($_ -eq "Get-IOTAuthorizerList/Status") -Or
            ($_ -eq "New-IOTAuthorizer/Status") -Or
            ($_ -eq "Update-IOTAuthorizer/Status")
        }
        {
            $v = "ACTIVE","INACTIVE"
            break
        }

        # Amazon.IoT.AutoRegistrationStatus
        "Update-IOTCACertificate/NewAutoRegistrationStatus"
        {
            $v = "DISABLE","ENABLE"
            break
        }

        # Amazon.IoT.CACertificateStatus
        "Update-IOTCACertificate/NewStatus"
        {
            $v = "ACTIVE","INACTIVE"
            break
        }

        # Amazon.IoT.CACertificateUpdateAction
        {
            ($_ -eq "New-IOTMitigationAction/ActionParams_UpdateCACertificateParams_Action") -Or
            ($_ -eq "Update-IOTMitigationAction/ActionParams_UpdateCACertificateParams_Action")
        }
        {
            $v = "DEACTIVATE"
            break
        }

        # Amazon.IoT.CannedAccessControlList
        {
            ($_ -eq "New-IOTTopicRule/TopicRulePayload_ErrorAction_S3_CannedAcl") -Or
            ($_ -eq "Set-IOTTopicRule/TopicRulePayload_ErrorAction_S3_CannedAcl")
        }
        {
            $v = "authenticated-read","aws-exec-read","bucket-owner-full-control","bucket-owner-read","log-delivery-write","private","public-read","public-read-write"
            break
        }

        # Amazon.IoT.CertificateStatus
        {
            ($_ -eq "Update-IOTCertificate/NewStatus") -Or
            ($_ -eq "Register-IOTCertificate/Status") -Or
            ($_ -eq "Register-IOTCertificateWithoutCA/Status")
        }
        {
            $v = "ACTIVE","INACTIVE","PENDING_ACTIVATION","PENDING_TRANSFER","REGISTER_INACTIVE","REVOKED"
            break
        }

        # Amazon.IoT.DayOfWeek
        {
            ($_ -eq "New-IOTScheduledAudit/DayOfWeek") -Or
            ($_ -eq "Update-IOTScheduledAudit/DayOfWeek")
        }
        {
            $v = "FRI","MON","SAT","SUN","THU","TUE","WED"
            break
        }

        # Amazon.IoT.DeviceCertificateUpdateAction
        {
            ($_ -eq "New-IOTMitigationAction/ActionParams_UpdateDeviceCertificateParams_Action") -Or
            ($_ -eq "Update-IOTMitigationAction/ActionParams_UpdateDeviceCertificateParams_Action")
        }
        {
            $v = "DEACTIVATE"
            break
        }

        # Amazon.IoT.DimensionType
        "New-IOTDimension/Type"
        {
            $v = "TOPIC_FILTER"
            break
        }

        # Amazon.IoT.DomainConfigurationStatus
        "Update-IOTDomainConfiguration/DomainConfigurationStatus"
        {
            $v = "DISABLED","ENABLED"
            break
        }

        # Amazon.IoT.DynamoKeyType
        {
            ($_ -eq "New-IOTTopicRule/TopicRulePayload_ErrorAction_DynamoDB_HashKeyType") -Or
            ($_ -eq "Set-IOTTopicRule/TopicRulePayload_ErrorAction_DynamoDB_HashKeyType") -Or
            ($_ -eq "New-IOTTopicRule/TopicRulePayload_ErrorAction_DynamoDB_RangeKeyType") -Or
            ($_ -eq "Set-IOTTopicRule/TopicRulePayload_ErrorAction_DynamoDB_RangeKeyType")
        }
        {
            $v = "NUMBER","STRING"
            break
        }

        # Amazon.IoT.JobExecutionStatus
        {
            ($_ -eq "Get-IOTJobExecutionsForJobList/Status") -Or
            ($_ -eq "Get-IOTJobExecutionsForThingList/Status")
        }
        {
            $v = "CANCELED","FAILED","IN_PROGRESS","QUEUED","REJECTED","REMOVED","SUCCEEDED","TIMED_OUT"
            break
        }

        # Amazon.IoT.JobStatus
        "Get-IOTJobList/Status"
        {
            $v = "CANCELED","COMPLETED","DELETION_IN_PROGRESS","IN_PROGRESS"
            break
        }

        # Amazon.IoT.LogLevel
        {
            ($_ -eq "New-IOTMitigationAction/ActionParams_EnableIoTLoggingParams_LogLevel") -Or
            ($_ -eq "Update-IOTMitigationAction/ActionParams_EnableIoTLoggingParams_LogLevel") -Or
            ($_ -eq "Set-IOTV2LoggingOption/DefaultLogLevel") -Or
            ($_ -eq "Set-IOTLoggingOption/LoggingOptionsPayload_LogLevel") -Or
            ($_ -eq "Set-IOTV2LoggingLevel/LogLevel")
        }
        {
            $v = "DEBUG","DISABLED","ERROR","INFO","WARN"
            break
        }

        # Amazon.IoT.LogTargetType
        {
            ($_ -eq "Set-IOTV2LoggingLevel/LogTarget_TargetType") -Or
            ($_ -eq "Get-IOTV2LoggingLevelList/TargetType") -Or
            ($_ -eq "Remove-IOTV2LoggingLevel/TargetType")
        }
        {
            $v = "DEFAULT","THING_GROUP"
            break
        }

        # Amazon.IoT.MessageFormat
        {
            ($_ -eq "New-IOTTopicRule/TopicRulePayload_ErrorAction_Sns_MessageFormat") -Or
            ($_ -eq "Set-IOTTopicRule/TopicRulePayload_ErrorAction_Sns_MessageFormat")
        }
        {
            $v = "JSON","RAW"
            break
        }

        # Amazon.IoT.MitigationActionType
        "Get-IOTMitigationActionList/ActionType"
        {
            $v = "ADD_THINGS_TO_THING_GROUP","ENABLE_IOT_LOGGING","PUBLISH_FINDING_TO_SNS","REPLACE_DEFAULT_POLICY_VERSION","UPDATE_CA_CERTIFICATE","UPDATE_DEVICE_CERTIFICATE"
            break
        }

        # Amazon.IoT.OTAUpdateStatus
        "Get-IOTOTAUpdateList/OtaUpdateStatus"
        {
            $v = "CREATE_COMPLETE","CREATE_FAILED","CREATE_IN_PROGRESS","CREATE_PENDING"
            break
        }

        # Amazon.IoT.PolicyTemplateName
        {
            ($_ -eq "New-IOTMitigationAction/ActionParams_ReplaceDefaultPolicyVersionParams_TemplateName") -Or
            ($_ -eq "Update-IOTMitigationAction/ActionParams_ReplaceDefaultPolicyVersionParams_TemplateName")
        }
        {
            $v = "BLANK_POLICY"
            break
        }

        # Amazon.IoT.ReportType
        "Get-IOTThingRegistrationTaskReportList/ReportType"
        {
            $v = "ERRORS","RESULTS"
            break
        }

        # Amazon.IoT.ServiceType
        {
            ($_ -eq "Get-IOTDomainConfigurationList/ServiceType") -Or
            ($_ -eq "New-IOTDomainConfiguration/ServiceType")
        }
        {
            $v = "CREDENTIAL_PROVIDER","DATA","JOBS"
            break
        }

        # Amazon.IoT.Status
        "Get-IOTThingRegistrationTaskList/Status"
        {
            $v = "Cancelled","Cancelling","Completed","Failed","InProgress"
            break
        }

        # Amazon.IoT.TargetSelection
        {
            ($_ -eq "Get-IOTJobList/TargetSelection") -Or
            ($_ -eq "New-IOTJob/TargetSelection") -Or
            ($_ -eq "New-IOTOTAUpdate/TargetSelection")
        }
        {
            $v = "CONTINUOUS","SNAPSHOT"
            break
        }

        # Amazon.IoT.ThingConnectivityIndexingMode
        "Update-IOTIndexingConfiguration/ThingIndexingConfiguration_ThingConnectivityIndexingMode"
        {
            $v = "OFF","STATUS"
            break
        }

        # Amazon.IoT.ThingGroupIndexingMode
        "Update-IOTIndexingConfiguration/ThingGroupIndexingConfiguration_ThingGroupIndexingMode"
        {
            $v = "OFF","ON"
            break
        }

        # Amazon.IoT.ThingIndexingMode
        "Update-IOTIndexingConfiguration/ThingIndexingConfiguration_ThingIndexingMode"
        {
            $v = "OFF","REGISTRY","REGISTRY_AND_SHADOW"
            break
        }

        # Amazon.IoT.TopicRuleDestinationStatus
        "Update-IOTTopicRuleDestination/Status"
        {
            $v = "DISABLED","ENABLED","ERROR","IN_PROGRESS"
            break
        }


    }

    $v |
        Where-Object { $_ -like "$wordToComplete*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$IOT_map = @{
    "ActionParams_EnableIoTLoggingParams_LogLevel"=@("New-IOTMitigationAction","Update-IOTMitigationAction")
    "ActionParams_ReplaceDefaultPolicyVersionParams_TemplateName"=@("New-IOTMitigationAction","Update-IOTMitigationAction")
    "ActionParams_UpdateCACertificateParams_Action"=@("New-IOTMitigationAction","Update-IOTMitigationAction")
    "ActionParams_UpdateDeviceCertificateParams_Action"=@("New-IOTMitigationAction","Update-IOTMitigationAction")
    "ActionStatus"=@("Get-IOTAuditMitigationActionsExecutionList")
    "ActionType"=@("Get-IOTMitigationActionList")
    "DayOfWeek"=@("New-IOTScheduledAudit","Update-IOTScheduledAudit")
    "DefaultLogLevel"=@("Set-IOTV2LoggingOption")
    "DomainConfigurationStatus"=@("Update-IOTDomainConfiguration")
    "Frequency"=@("New-IOTScheduledAudit","Update-IOTScheduledAudit")
    "LoggingOptionsPayload_LogLevel"=@("Set-IOTLoggingOption")
    "LogLevel"=@("Set-IOTV2LoggingLevel")
    "LogTarget_TargetType"=@("Set-IOTV2LoggingLevel")
    "NewAutoRegistrationStatus"=@("Update-IOTCACertificate")
    "NewStatus"=@("Update-IOTCACertificate","Update-IOTCertificate")
    "OtaUpdateStatus"=@("Get-IOTOTAUpdateList")
    "ReportType"=@("Get-IOTThingRegistrationTaskReportList")
    "ServiceType"=@("Get-IOTDomainConfigurationList","New-IOTDomainConfiguration")
    "Status"=@("Get-IOTAuthorizerList","Get-IOTJobExecutionsForJobList","Get-IOTJobExecutionsForThingList","Get-IOTJobList","Get-IOTThingRegistrationTaskList","New-IOTAuthorizer","Register-IOTCertificate","Register-IOTCertificateWithoutCA","Update-IOTAuthorizer","Update-IOTTopicRuleDestination")
    "TargetSelection"=@("Get-IOTJobList","New-IOTJob","New-IOTOTAUpdate")
    "TargetType"=@("Get-IOTV2LoggingLevelList","Remove-IOTV2LoggingLevel")
    "TaskStatus"=@("Get-IOTAuditMitigationActionsTaskList","Get-IOTTaskList")
    "TaskType"=@("Get-IOTTaskList")
    "ThingGroupIndexingConfiguration_ThingGroupIndexingMode"=@("Update-IOTIndexingConfiguration")
    "ThingIndexingConfiguration_ThingConnectivityIndexingMode"=@("Update-IOTIndexingConfiguration")
    "ThingIndexingConfiguration_ThingIndexingMode"=@("Update-IOTIndexingConfiguration")
    "TopicRulePayload_ErrorAction_DynamoDB_HashKeyType"=@("New-IOTTopicRule","Set-IOTTopicRule")
    "TopicRulePayload_ErrorAction_DynamoDB_RangeKeyType"=@("New-IOTTopicRule","Set-IOTTopicRule")
    "TopicRulePayload_ErrorAction_S3_CannedAcl"=@("New-IOTTopicRule","Set-IOTTopicRule")
    "TopicRulePayload_ErrorAction_Sns_MessageFormat"=@("New-IOTTopicRule","Set-IOTTopicRule")
    "Type"=@("New-IOTDimension")
}

_awsArgumentCompleterRegistration $IOT_Completers $IOT_map

$IOT_SelectCompleters = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    $cmdletType = Invoke-Expression "[Amazon.PowerShell.Cmdlets.IOT.$($commandName.Replace('-', ''))Cmdlet]"
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

$IOT_SelectMap = @{
    "Select"=@("Confirm-IOTCertificateTransfer",
               "Add-IOTThingToBillingGroup",
               "Add-IOTThingToThingGroup",
               "Add-IOTTargetsWithJob",
               "Add-IOTPolicy",
               "Add-IOTPrincipalPolicy",
               "Mount-IOTSecurityProfile",
               "Add-IOTThingPrincipal",
               "Stop-IOTAuditMitigationActionsTask",
               "Stop-IOTAuditTask",
               "Stop-IOTCertificateTransfer",
               "Stop-IOTJob",
               "Stop-IOTJobExecution",
               "Clear-IOTDefaultAuthorizer",
               "Confirm-IOTTopicRuleDestination",
               "New-IOTAuthorizer",
               "New-IOTBillingGroup",
               "New-IOTCertificateFromCsr",
               "New-IOTDimension",
               "New-IOTDomainConfiguration",
               "New-IOTDynamicThingGroup",
               "New-IOTJob",
               "New-IOTKeysAndCertificate",
               "New-IOTMitigationAction",
               "New-IOTOTAUpdate",
               "New-IOTPolicy",
               "New-IOTPolicyVersion",
               "New-IOTProvisioningClaim",
               "New-IOTProvisioningTemplate",
               "New-IOTProvisioningTemplateVersion",
               "New-IOTRoleAlias",
               "New-IOTScheduledAudit",
               "New-IOTSecurityProfile",
               "New-IOTStream",
               "New-IOTThing",
               "New-IOTThingGroup",
               "New-IOTThingType",
               "New-IOTTopicRule",
               "New-IOTTopicRuleDestination",
               "Remove-IOTAccountAuditConfiguration",
               "Remove-IOTAuthorizer",
               "Remove-IOTBillingGroup",
               "Remove-IOTCACertificate",
               "Remove-IOTCertificate",
               "Remove-IOTDimension",
               "Remove-IOTDomainConfiguration",
               "Remove-IOTDynamicThingGroup",
               "Remove-IOTJob",
               "Remove-IOTJobExecution",
               "Remove-IOTMitigationAction",
               "Remove-IOTOTAUpdate",
               "Remove-IOTPolicy",
               "Remove-IOTPolicyVersion",
               "Remove-IOTProvisioningTemplate",
               "Remove-IOTProvisioningTemplateVersion",
               "Remove-IOTRegistrationCode",
               "Remove-IOTRoleAlias",
               "Remove-IOTScheduledAudit",
               "Remove-IOTSecurityProfile",
               "Remove-IOTStream",
               "Remove-IOTThing",
               "Remove-IOTThingGroup",
               "Remove-IOTThingType",
               "Remove-IOTTopicRule",
               "Remove-IOTTopicRuleDestination",
               "Remove-IOTV2LoggingLevel",
               "Set-IOTThingTypeDeprecation",
               "Get-IOTAccountAuditConfiguration",
               "Get-IOTAuditFinding",
               "Get-IOTAuditMitigationActionsTask",
               "Get-IOTAuditTask",
               "Get-IOTAuthorizer",
               "Get-IOTBillingGroup",
               "Get-IOTCACertificate",
               "Get-IOTCertificate",
               "Get-IOTDefaultAuthorizer",
               "Get-IOTDimension",
               "Get-IOTDomainConfiguration",
               "Get-IOTEndpoint",
               "Get-IOTEventConfiguration",
               "Get-IOTIndex",
               "Get-IOTJob",
               "Get-IOTJobExecution",
               "Get-IOTMitigationAction",
               "Get-IOTProvisioningTemplate",
               "Get-IOTProvisioningTemplateVersion",
               "Get-IOTRoleAlias",
               "Get-IOTScheduledAudit",
               "Get-IOTSecurityProfile",
               "Get-IOTStream",
               "Get-IOTThing",
               "Get-IOTThingGroup",
               "Get-IOTThingRegistrationTask",
               "Get-IOTThingType",
               "Dismount-IOTPolicy",
               "Remove-IOTPrincipalPolicy",
               "Dismount-IOTSecurityProfile",
               "Remove-IOTThingPrincipal",
               "Disable-IOTTopicRule",
               "Enable-IOTTopicRule",
               "Get-IOTCardinality",
               "Get-IOTEffectivePolicy",
               "Get-IOTIndexingConfiguration",
               "Get-IOTJobDocument",
               "Get-IOTLoggingOption",
               "Get-IOTOTAUpdate",
               "Get-IOTPercentile",
               "Get-IOTPolicy",
               "Get-IOTPolicyVersion",
               "Get-IOTRegistrationCode",
               "Get-IOTStatistic",
               "Get-IOTTopicRule",
               "Get-IOTTopicRuleDestination",
               "Get-IOTV2LoggingOption",
               "Get-IOTActiveViolationList",
               "Get-IOTAttachedPolicyList",
               "Get-IOTAuditFindingList",
               "Get-IOTAuditMitigationActionsExecutionList",
               "Get-IOTAuditMitigationActionsTaskList",
               "Get-IOTTaskList",
               "Get-IOTAuthorizerList",
               "Get-IOTBillingGroupList",
               "Get-IOTCACertificateList",
               "Get-IOTCertificateList",
               "Get-IOTCertificateListByCA",
               "Get-IOTDimensionList",
               "Get-IOTDomainConfigurationList",
               "Get-IOTIndexList",
               "Get-IOTJobExecutionsForJobList",
               "Get-IOTJobExecutionsForThingList",
               "Get-IOTJobList",
               "Get-IOTMitigationActionList",
               "Get-IOTOTAUpdateList",
               "Get-IOTOutgoingCertificate",
               "Get-IOTPolicyList",
               "Get-IOTPolicyPrincipalList",
               "Get-IOTPolicyVersionList",
               "Get-IOTPrincipalPolicyList",
               "Get-IOTPrincipalThingList",
               "Get-IOTProvisioningTemplateList",
               "Get-IOTProvisioningTemplateVersionList",
               "Get-IOTRoleAliasList",
               "Get-IOTScheduledAuditList",
               "Get-IOTSecurityProfileList",
               "Get-IOTSecurityProfilesForTargetList",
               "Get-IOTStreamList",
               "Get-IOTTagListForResource",
               "Get-IOTTargetsForPolicyList",
               "Get-IOTTargetsForSecurityProfileList",
               "Get-IOTThingGroupList",
               "Get-IOTThingGroupsForThingList",
               "Get-IOTThingPrincipalList",
               "Get-IOTThingRegistrationTaskReportList",
               "Get-IOTThingRegistrationTaskList",
               "Get-IOTThingList",
               "Get-IOTThingsInBillingGroupList",
               "Get-IOTThingsInThingGroupList",
               "Get-IOTThingTypeList",
               "Get-IOTTopicRuleDestinationList",
               "Get-IOTTopicRuleList",
               "Get-IOTV2LoggingLevelList",
               "Get-IOTViolationEventList",
               "Register-IOTCACertificate",
               "Register-IOTCertificate",
               "Register-IOTCertificateWithoutCA",
               "Register-IOTThing",
               "Deny-IOTCertificateTransfer",
               "Remove-IOTThingFromBillingGroup",
               "Remove-IOTThingFromThingGroup",
               "Set-IOTTopicRule",
               "Search-IOTIndex",
               "Set-IOTDefaultAuthorizer",
               "Set-IOTDefaultPolicyVersion",
               "Set-IOTLoggingOption",
               "Set-IOTV2LoggingLevel",
               "Set-IOTV2LoggingOption",
               "Start-IOTAuditMitigationActionsTask",
               "Start-IOTOnDemandAuditTask",
               "Start-IOTThingRegistrationTask",
               "Stop-IOTThingRegistrationTask",
               "Add-IOTResourceTag",
               "Test-IOTAuthorization",
               "Test-IOTInvokeAuthorizer",
               "Request-IOTCertificateTransfer",
               "Remove-IOTResourceTag",
               "Update-IOTAccountAuditConfiguration",
               "Update-IOTAuthorizer",
               "Update-IOTBillingGroup",
               "Update-IOTCACertificate",
               "Update-IOTCertificate",
               "Update-IOTDimension",
               "Update-IOTDomainConfiguration",
               "Update-IOTDynamicThingGroup",
               "Update-IOTEventConfiguration",
               "Update-IOTIndexingConfiguration",
               "Update-IOTJob",
               "Update-IOTMitigationAction",
               "Update-IOTProvisioningTemplate",
               "Update-IOTRoleAlias",
               "Update-IOTScheduledAudit",
               "Update-IOTSecurityProfile",
               "Update-IOTStream",
               "Update-IOTThing",
               "Update-IOTThingGroup",
               "Update-IOTThingGroupsForThing",
               "Update-IOTTopicRuleDestination",
               "Test-IOTValidSecurityProfileBehavior")
}

_awsArgumentCompleterRegistration $IOT_SelectCompleters $IOT_SelectMap


# SIG # Begin signature block
# MIIcUAYJKoZIhvcNAQcCoIIcQTCCHD0CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDRdoaVhxA/ltVw
# l9FVU+WdrTzqaByu3gCSjAJ+WjFdkqCCF0cwggS5MIIDoaADAgECAhArd4OFAE9M
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
# DAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgbY39f+BkEZ49wRvlCIBy+eal
# T5DseR743oKhC5Qm6HEwDQYJKoZIhvcNAQEBBQAEggEADHvgp38MROhLmGbNUJYN
# GllNcoI+2Ny3pYRSOIbThIxAKkN5/X1M78+o24B9kvB6DsQaTKTlJjoj0ht9XS4y
# dQQ4CR8w0vXI8os46sXpEj67nnnLeSHzo11z5QqvV/TJdnhb1lgeqm5zhlqR71kP
# h5u3PyImD19rqga5G6xL/FfFQkATq0rXaba7/hORdPwJI4bEkxZRfB1x6O3ENGSn
# NhNpIg1gxJ+z4V+kekTapagbGstPiZuBWwYleExgXA8aW1SO+AEsDxQo6ZOnfhc2
# 4fr8bS4FXfMgxy5e/okIstcwHykELcoJAv/ixweA4bho4TkwqGS/itG3esc7+81p
# 96GCAg8wggILBgkqhkiG9w0BCQYxggH8MIIB+AIBATB2MGIxCzAJBgNVBAYTAlVT
# MRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5j
# b20xITAfBgNVBAMTGERpZ2lDZXJ0IEFzc3VyZWQgSUQgQ0EtMQIQAwGaAjr/WLFr
# 1tXq5hfwZjAJBgUrDgMCGgUAoF0wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAc
# BgkqhkiG9w0BCQUxDxcNMjAwNjEwMjMxNzE4WjAjBgkqhkiG9w0BCQQxFgQUN1fe
# +1VCifd8mo8FoJ+6p3IiMFYwDQYJKoZIhvcNAQEBBQAEggEAE21ORpguU/Wxj0XS
# 5HNoMhcfaY2BHSQd/7zQl+oRUzymf+OpKxEoxCNPHv/Zc0lyB0ufmdE017O7mohQ
# eB+HXRnSkgPTy+BPUZOMkhrUnb+1gvILD0wWApnyDeo4/SLQZSqKz/8ORevj0PUT
# wC6wpFdoVxgUqH2Sh1UptNuqxXqnM2i3gNjEUJtWTbrtjsw+k7pnEeHRmZdA4Sgd
# +G0Rx8PuomJluhUeyH7uDA6cCWu1aB1Od/Wzr5Q6qQLfrTjFjkwaY5yt13L9yoWp
# AgdACBvoepvvRQEIqG1uT6dyUG79aZovmXYr32fGChgswb8QrnXvEN3HbCLgUYRW
# smgR6g==
# SIG # End signature block
