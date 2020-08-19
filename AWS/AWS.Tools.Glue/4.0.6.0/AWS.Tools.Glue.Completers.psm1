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

# Argument completions for service AWS Glue


$GLUE_Completers = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    switch ($("$commandName/$parameterName"))
    {
        # Amazon.Glue.CatalogEncryptionMode
        "Set-GLUEDataCatalogEncryptionSetting/DataCatalogEncryptionSettings_EncryptionAtRest_CatalogEncryptionMode"
        {
            $v = "DISABLED","SSE-KMS"
            break
        }

        # Amazon.Glue.CloudWatchEncryptionMode
        "New-GLUESecurityConfiguration/EncryptionConfiguration_CloudWatchEncryption_CloudWatchEncryptionMode"
        {
            $v = "DISABLED","SSE-KMS"
            break
        }

        # Amazon.Glue.CsvHeaderOption
        {
            ($_ -eq "New-GLUEClassifier/CsvClassifier_ContainsHeader") -Or
            ($_ -eq "Update-GLUEClassifier/CsvClassifier_ContainsHeader")
        }
        {
            $v = "ABSENT","PRESENT","UNKNOWN"
            break
        }

        # Amazon.Glue.ExistCondition
        "Set-GLUEResourcePolicy/PolicyExistsCondition"
        {
            $v = "MUST_EXIST","NONE","NOT_EXIST"
            break
        }

        # Amazon.Glue.JobBookmarksEncryptionMode
        "New-GLUESecurityConfiguration/EncryptionConfiguration_JobBookmarksEncryption_JobBookmarksEncryptionMode"
        {
            $v = "CSE-KMS","DISABLED"
            break
        }

        # Amazon.Glue.Language
        {
            ($_ -eq "Get-GLUEPlan/Language") -Or
            ($_ -eq "New-GLUEScript/Language")
        }
        {
            $v = "PYTHON","SCALA"
            break
        }

        # Amazon.Glue.SortDirectionType
        {
            ($_ -eq "Get-GLUEMLTaskRunList/Sort_SortDirection") -Or
            ($_ -eq "Get-GLUEMLTransformIdentifier/Sort_SortDirection") -Or
            ($_ -eq "Get-GLUEMLTransformList/Sort_SortDirection")
        }
        {
            $v = "ASCENDING","DESCENDING"
            break
        }

        # Amazon.Glue.TaskRunSortColumnType
        "Get-GLUEMLTaskRunList/Sort_Column"
        {
            $v = "STARTED","STATUS","TASK_RUN_TYPE"
            break
        }

        # Amazon.Glue.TaskStatusType
        "Get-GLUEMLTaskRunList/Filter_Status"
        {
            $v = "FAILED","RUNNING","STARTING","STOPPED","STOPPING","SUCCEEDED","TIMEOUT"
            break
        }

        # Amazon.Glue.TaskType
        "Get-GLUEMLTaskRunList/Filter_TaskRunType"
        {
            $v = "EVALUATION","EXPORT_LABELS","FIND_MATCHES","IMPORT_LABELS","LABELING_SET_GENERATION"
            break
        }

        # Amazon.Glue.TransformSortColumnType
        {
            ($_ -eq "Get-GLUEMLTransformIdentifier/Sort_Column") -Or
            ($_ -eq "Get-GLUEMLTransformList/Sort_Column")
        }
        {
            $v = "CREATED","LAST_MODIFIED","NAME","STATUS","TRANSFORM_TYPE"
            break
        }

        # Amazon.Glue.TransformStatusType
        {
            ($_ -eq "Get-GLUEMLTransformIdentifier/Filter_Status") -Or
            ($_ -eq "Get-GLUEMLTransformList/Filter_Status")
        }
        {
            $v = "DELETING","NOT_READY","READY"
            break
        }

        # Amazon.Glue.TransformType
        {
            ($_ -eq "Get-GLUEMLTransformIdentifier/Filter_TransformType") -Or
            ($_ -eq "Get-GLUEMLTransformList/Filter_TransformType") -Or
            ($_ -eq "New-GLUEMLTransform/Parameters_TransformType") -Or
            ($_ -eq "Update-GLUEMLTransform/Parameters_TransformType")
        }
        {
            $v = "FIND_MATCHES"
            break
        }

        # Amazon.Glue.TriggerType
        "New-GLUETrigger/Type"
        {
            $v = "CONDITIONAL","ON_DEMAND","SCHEDULED"
            break
        }

        # Amazon.Glue.WorkerType
        {
            ($_ -eq "New-GLUEDevEndpoint/WorkerType") -Or
            ($_ -eq "New-GLUEJob/WorkerType") -Or
            ($_ -eq "New-GLUEMLTransform/WorkerType") -Or
            ($_ -eq "Start-GLUEJobRun/WorkerType") -Or
            ($_ -eq "Update-GLUEMLTransform/WorkerType")
        }
        {
            $v = "G.1X","G.2X","Standard"
            break
        }


    }

    $v |
        Where-Object { $_ -like "$wordToComplete*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$GLUE_map = @{
    "CsvClassifier_ContainsHeader"=@("New-GLUEClassifier","Update-GLUEClassifier")
    "DataCatalogEncryptionSettings_EncryptionAtRest_CatalogEncryptionMode"=@("Set-GLUEDataCatalogEncryptionSetting")
    "EncryptionConfiguration_CloudWatchEncryption_CloudWatchEncryptionMode"=@("New-GLUESecurityConfiguration")
    "EncryptionConfiguration_JobBookmarksEncryption_JobBookmarksEncryptionMode"=@("New-GLUESecurityConfiguration")
    "Filter_Status"=@("Get-GLUEMLTaskRunList","Get-GLUEMLTransformIdentifier","Get-GLUEMLTransformList")
    "Filter_TaskRunType"=@("Get-GLUEMLTaskRunList")
    "Filter_TransformType"=@("Get-GLUEMLTransformIdentifier","Get-GLUEMLTransformList")
    "Language"=@("Get-GLUEPlan","New-GLUEScript")
    "Parameters_TransformType"=@("New-GLUEMLTransform","Update-GLUEMLTransform")
    "PolicyExistsCondition"=@("Set-GLUEResourcePolicy")
    "Sort_Column"=@("Get-GLUEMLTaskRunList","Get-GLUEMLTransformIdentifier","Get-GLUEMLTransformList")
    "Sort_SortDirection"=@("Get-GLUEMLTaskRunList","Get-GLUEMLTransformIdentifier","Get-GLUEMLTransformList")
    "Type"=@("New-GLUETrigger")
    "WorkerType"=@("New-GLUEDevEndpoint","New-GLUEJob","New-GLUEMLTransform","Start-GLUEJobRun","Update-GLUEMLTransform")
}

_awsArgumentCompleterRegistration $GLUE_Completers $GLUE_map

$GLUE_SelectCompleters = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    $cmdletType = Invoke-Expression "[Amazon.PowerShell.Cmdlets.GLUE.$($commandName.Replace('-', ''))Cmdlet]"
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

$GLUE_SelectMap = @{
    "Select"=@("New-GLUEPartitionBatch",
               "Remove-GLUEConnectionBatch",
               "Remove-GLUEPartitionBatch",
               "Remove-GLUETableBatch",
               "Remove-GLUETableVersionBatch",
               "Get-GLUECrawlerBatch",
               "Get-GLUEDevEndpointBatch",
               "Get-GLUEJobBatch",
               "Get-GLUEPartitionBatch",
               "Get-GLUETriggerBatch",
               "Get-GLUEWorkflowBatch",
               "Stop-GLUEJobRunBatch",
               "Stop-GLUEMLTaskRun",
               "New-GLUEClassifier",
               "New-GLUEConnection",
               "New-GLUECrawler",
               "New-GLUEDatabase",
               "New-GLUEDevEndpoint",
               "New-GLUEJob",
               "New-GLUEMLTransform",
               "New-GLUEPartition",
               "New-GLUEScript",
               "New-GLUESecurityConfiguration",
               "New-GLUETable",
               "New-GLUETrigger",
               "New-GLUEUserDefinedFunction",
               "New-GLUEWorkflow",
               "Remove-GLUEClassifier",
               "Remove-GLUEConnection",
               "Remove-GLUECrawler",
               "Remove-GLUEDatabase",
               "Remove-GLUEDevEndpoint",
               "Remove-GLUEJob",
               "Remove-GLUEMLTransform",
               "Remove-GLUEPartition",
               "Remove-GLUEResourcePolicy",
               "Remove-GLUESecurityConfiguration",
               "Remove-GLUETable",
               "Remove-GLUETableVersion",
               "Remove-GLUETrigger",
               "Remove-GLUEUserDefinedFunction",
               "Remove-GLUEWorkflow",
               "Get-GLUECatalogImportStatus",
               "Get-GLUEClassifier",
               "Get-GLUEClassifierList",
               "Get-GLUEConnection",
               "Get-GLUEConnectionList",
               "Get-GLUECrawler",
               "Get-GLUECrawlerMetricList",
               "Get-GLUECrawlerList",
               "Get-GLUEDatabase",
               "Get-GLUEDatabaseList",
               "Get-GLUEDataCatalogEncryptionSetting",
               "Get-GLUEDataflowGraph",
               "Get-GLUEDevEndpoint",
               "Get-GLUEDevEndpointList",
               "Get-GLUEJob",
               "Get-GLUEJobBookmark",
               "Get-GLUEJobRun",
               "Get-GLUEJobRunList",
               "Get-GLUEJobList",
               "Get-GLUEMapping",
               "Get-GLUEMLTaskRun",
               "Get-GLUEMLTaskRunList",
               "Get-GLUEMLTransform",
               "Get-GLUEMLTransformList",
               "Get-GLUEPartition",
               "Get-GLUEPartitionList",
               "Get-GLUEPlan",
               "Get-GLUEResourcePolicy",
               "Get-GLUESecurityConfiguration",
               "Get-GLUESecurityConfigurationList",
               "Get-GLUETable",
               "Get-GLUETableList",
               "Get-GLUETableVersion",
               "Get-GLUETableVersionList",
               "Get-GLUETag",
               "Get-GLUETrigger",
               "Get-GLUETriggerList",
               "Get-GLUEUserDefinedFunction",
               "Get-GLUEUserDefinedFunctionList",
               "Get-GLUEWorkflow",
               "Get-GLUEWorkflowRun",
               "Get-GLUEWorkflowRunProperty",
               "Get-GLUEWorkflowRunList",
               "Import-GLUECatalog",
               "Get-GLUECrawlerNameList",
               "Get-GLUEDevEndpointNameList",
               "Get-GLUEJobNameList",
               "Get-GLUEMLTransformIdentifier",
               "Get-GLUETriggerNameList",
               "Get-GLUEWorkflowList",
               "Set-GLUEDataCatalogEncryptionSetting",
               "Set-GLUEResourcePolicy",
               "Write-GLUEWorkflowRunProperty",
               "Reset-GLUEJobBookmark",
               "Find-GLUETable",
               "Start-GLUECrawler",
               "Start-GLUECrawlerSchedule",
               "Start-GLUEExportLabelsTaskRun",
               "Start-GLUEImportLabelsTaskRun",
               "Start-GLUEJobRun",
               "Start-GLUEMLEvaluationTaskRun",
               "Start-GLUEMLLabelingSetGenerationTaskRun",
               "Start-GLUETrigger",
               "Start-GLUEWorkflowRun",
               "Stop-GLUECrawler",
               "Stop-GLUECrawlerSchedule",
               "Stop-GLUETrigger",
               "Stop-GLUEWorkflowRun",
               "Add-GLUEResourceTag",
               "Remove-GLUEResourceTag",
               "Update-GLUEClassifier",
               "Update-GLUEConnection",
               "Update-GLUECrawler",
               "Update-GLUECrawlerSchedule",
               "Update-GLUEDatabase",
               "Update-GLUEDevEndpoint",
               "Update-GLUEJob",
               "Update-GLUEMLTransform",
               "Update-GLUEPartition",
               "Update-GLUETable",
               "Update-GLUETrigger",
               "Update-GLUEUserDefinedFunction",
               "Update-GLUEWorkflow")
}

_awsArgumentCompleterRegistration $GLUE_SelectCompleters $GLUE_SelectMap


# SIG # Begin signature block
# MIIcUAYJKoZIhvcNAQcCoIIcQTCCHD0CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCeoD81J16MuNbf
# SmyAxvC7r6JaHvMt+g7sMc1AJMT7cKCCF0cwggS5MIIDoaADAgECAhArd4OFAE9M
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
# DAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgXf4Uugejt5CIreHCSczVr/Ys
# xdweQFuYcAadz+/Dn4owDQYJKoZIhvcNAQEBBQAEggEAMAVqvI5wfQHmyRxyCwzG
# +3ATw4vgioW1+NxsLUPbwUh1XelgRQSbsceVT1dJenqANjPEzeoVBPooY7qt/n9q
# rRBS173Qj8l1v7OAwNCox/L4pmGxR7CuNURMHg0ouslL6cHMbmstmpag4wKxtgIV
# g5p5RSvmogiNsqUd4hBwNMPwh/uJQtSLKp8iQtkyhVgfi/q4czdqYT3rqrm9LeE8
# HjoEn9Onog1TErw/NAWA2Sey01SiPSIeK5VOgeFzom0bXbI3jMrtBVOxuEUhpX6S
# v48FKpK/BK3Gg7+f0dy3aS/MT5PHJQxAuEfq7YHclC6+/166M8xGo9e3duvRwX+o
# 86GCAg8wggILBgkqhkiG9w0BCQYxggH8MIIB+AIBATB2MGIxCzAJBgNVBAYTAlVT
# MRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5j
# b20xITAfBgNVBAMTGERpZ2lDZXJ0IEFzc3VyZWQgSUQgQ0EtMQIQAwGaAjr/WLFr
# 1tXq5hfwZjAJBgUrDgMCGgUAoF0wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAc
# BgkqhkiG9w0BCQUxDxcNMjAwNjEwMjMxNzEyWjAjBgkqhkiG9w0BCQQxFgQUELYL
# 5VI2R0csgQ2xPIoeEXX+54owDQYJKoZIhvcNAQEBBQAEggEAXcsKz8xVFfBtYe6g
# OkgMIEJFwtgLq5jeVLtb/yIYMYfYwNDUo6ufql0R6Izv0KqYQSumlF8fwpcmx+s8
# jvNBL1uz5Voxtyev77oGVx7l5omcjixJ+IqbGTtSjPGaUL8TCEeKDSB+35Iws+1W
# ZWnxht3DkDiEQCeGmoNZxzAHcceZFXqAhqMkDwl0LdvgvgcofWKcYLbLMSpVitGP
# GnOACjMZ1VrZ6E3RtAI5cWojt5GMOsuyjNbgWO7kZqZheIBpXytNwymEptz52Tzp
# m7icQ8C/r5dalVqAe5XxynWvpv8Yk1wsoZxM1oFBObwPj/WF7aqK0K6Djz/qFedD
# lmORKg==
# SIG # End signature block
