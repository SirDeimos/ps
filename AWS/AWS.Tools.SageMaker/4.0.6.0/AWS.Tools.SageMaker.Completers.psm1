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

# Argument completions for service Amazon SageMaker Service


$SM_Completers = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    switch ($("$commandName/$parameterName"))
    {
        # Amazon.SageMaker.AlgorithmSortBy
        "Get-SMAlgorithmList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.AppInstanceType
        "New-SMApp/ResourceSpec_InstanceType"
        {
            $v = "ml.c5.12xlarge","ml.c5.18xlarge","ml.c5.24xlarge","ml.c5.2xlarge","ml.c5.4xlarge","ml.c5.9xlarge","ml.c5.large","ml.c5.xlarge","ml.g4dn.12xlarge","ml.g4dn.16xlarge","ml.g4dn.2xlarge","ml.g4dn.4xlarge","ml.g4dn.8xlarge","ml.g4dn.xlarge","ml.m5.12xlarge","ml.m5.16xlarge","ml.m5.24xlarge","ml.m5.2xlarge","ml.m5.4xlarge","ml.m5.8xlarge","ml.m5.large","ml.m5.xlarge","ml.p3.16xlarge","ml.p3.2xlarge","ml.p3.8xlarge","ml.t3.2xlarge","ml.t3.large","ml.t3.medium","ml.t3.micro","ml.t3.small","ml.t3.xlarge","system"
            break
        }

        # Amazon.SageMaker.AppSortKey
        "Get-SMAppList/SortBy"
        {
            $v = "CreationTime"
            break
        }

        # Amazon.SageMaker.AppType
        {
            ($_ -eq "Get-SMApp/AppType") -Or
            ($_ -eq "New-SMApp/AppType") -Or
            ($_ -eq "Remove-SMApp/AppType")
        }
        {
            $v = "JupyterServer","KernelGateway","TensorBoard"
            break
        }

        # Amazon.SageMaker.AssemblyType
        "New-SMTransformJob/TransformOutput_AssembleWith"
        {
            $v = "Line","None"
            break
        }

        # Amazon.SageMaker.AuthMode
        "New-SMDomain/AuthMode"
        {
            $v = "IAM","SSO"
            break
        }

        # Amazon.SageMaker.AutoMLJobStatus
        "Get-SMAutoMLJobList/StatusEquals"
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.AutoMLMetricEnum
        "New-SMAutoMLJob/AutoMLJobObjective_MetricName"
        {
            $v = "Accuracy","F1","F1macro","MSE"
            break
        }

        # Amazon.SageMaker.AutoMLSortBy
        "Get-SMAutoMLJobList/SortBy"
        {
            $v = "CreationTime","Name","Status"
            break
        }

        # Amazon.SageMaker.AutoMLSortOrder
        {
            ($_ -eq "Get-SMAutoMLJobList/SortOrder") -Or
            ($_ -eq "Get-SMCandidatesForAutoMLJobList/SortOrder")
        }
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.AwsManagedHumanLoopRequestSource
        "New-SMFlowDefinition/HumanLoopRequestSource_AwsManagedHumanLoopRequestSource"
        {
            $v = "AWS/Rekognition/DetectModerationLabels/Image/V3","AWS/Textract/AnalyzeDocument/Forms/V1"
            break
        }

        # Amazon.SageMaker.BatchStrategy
        "New-SMTransformJob/BatchStrategy"
        {
            $v = "MultiRecord","SingleRecord"
            break
        }

        # Amazon.SageMaker.BooleanOperator
        "Search-SMResource/SearchExpression_Operator"
        {
            $v = "And","Or"
            break
        }

        # Amazon.SageMaker.CandidateSortBy
        "Get-SMCandidatesForAutoMLJobList/SortBy"
        {
            $v = "CreationTime","FinalObjectiveMetricValue","Status"
            break
        }

        # Amazon.SageMaker.CandidateStatus
        "Get-SMCandidatesForAutoMLJobList/StatusEquals"
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.CodeRepositorySortBy
        "Get-SMCodeRepositoryList/SortBy"
        {
            $v = "CreationTime","LastModifiedTime","Name"
            break
        }

        # Amazon.SageMaker.CodeRepositorySortOrder
        "Get-SMCodeRepositoryList/SortOrder"
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.CompilationJobStatus
        "Get-SMCompilationJobList/StatusEquals"
        {
            $v = "COMPLETED","FAILED","INPROGRESS","STARTING","STOPPED","STOPPING"
            break
        }

        # Amazon.SageMaker.CompressionType
        "New-SMTransformJob/TransformInput_CompressionType"
        {
            $v = "Gzip","None"
            break
        }

        # Amazon.SageMaker.DirectInternetAccess
        "New-SMNotebookInstance/DirectInternetAccess"
        {
            $v = "Disabled","Enabled"
            break
        }

        # Amazon.SageMaker.EndpointConfigSortKey
        "Get-SMConfigList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.EndpointSortKey
        "Get-SMEndpointList/SortBy"
        {
            $v = "CreationTime","Name","Status"
            break
        }

        # Amazon.SageMaker.EndpointStatus
        "Get-SMEndpointList/StatusEquals"
        {
            $v = "Creating","Deleting","Failed","InService","OutOfService","RollingBack","SystemUpdating","Updating"
            break
        }

        # Amazon.SageMaker.ExecutionStatus
        "Get-SMMonitoringExecutionList/StatusEquals"
        {
            $v = "Completed","CompletedWithViolations","Failed","InProgress","Pending","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.Framework
        "New-SMCompilationJob/InputConfig_Framework"
        {
            $v = "KERAS","MXNET","ONNX","PYTORCH","TENSORFLOW","TFLITE","XGBOOST"
            break
        }

        # Amazon.SageMaker.HyperParameterTuningJobObjectiveType
        {
            ($_ -eq "New-SMHyperParameterTuningJob/HyperParameterTuningJobConfig_HyperParameterTuningJobObjective_Type") -Or
            ($_ -eq "New-SMHyperParameterTuningJob/TrainingJobDefinition_TuningObjective_Type")
        }
        {
            $v = "Maximize","Minimize"
            break
        }

        # Amazon.SageMaker.HyperParameterTuningJobSortByOptions
        "Get-SMHyperParameterTuningJobList/SortBy"
        {
            $v = "CreationTime","Name","Status"
            break
        }

        # Amazon.SageMaker.HyperParameterTuningJobStatus
        "Get-SMHyperParameterTuningJobList/StatusEquals"
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.HyperParameterTuningJobStrategyType
        "New-SMHyperParameterTuningJob/HyperParameterTuningJobConfig_Strategy"
        {
            $v = "Bayesian","Random"
            break
        }

        # Amazon.SageMaker.HyperParameterTuningJobWarmStartType
        "New-SMHyperParameterTuningJob/WarmStartConfig_WarmStartType"
        {
            $v = "IdenticalDataAndAlgorithm","TransferLearning"
            break
        }

        # Amazon.SageMaker.InstanceType
        {
            ($_ -eq "New-SMNotebookInstance/InstanceType") -Or
            ($_ -eq "Update-SMNotebookInstance/InstanceType")
        }
        {
            $v = "ml.c4.2xlarge","ml.c4.4xlarge","ml.c4.8xlarge","ml.c4.xlarge","ml.c5.18xlarge","ml.c5.2xlarge","ml.c5.4xlarge","ml.c5.9xlarge","ml.c5.xlarge","ml.c5d.18xlarge","ml.c5d.2xlarge","ml.c5d.4xlarge","ml.c5d.9xlarge","ml.c5d.xlarge","ml.m4.10xlarge","ml.m4.16xlarge","ml.m4.2xlarge","ml.m4.4xlarge","ml.m4.xlarge","ml.m5.12xlarge","ml.m5.24xlarge","ml.m5.2xlarge","ml.m5.4xlarge","ml.m5.xlarge","ml.p2.16xlarge","ml.p2.8xlarge","ml.p2.xlarge","ml.p3.16xlarge","ml.p3.2xlarge","ml.p3.8xlarge","ml.t2.2xlarge","ml.t2.large","ml.t2.medium","ml.t2.xlarge","ml.t3.2xlarge","ml.t3.large","ml.t3.medium","ml.t3.xlarge"
            break
        }

        # Amazon.SageMaker.JoinSource
        "New-SMTransformJob/DataProcessing_JoinSource"
        {
            $v = "Input","None"
            break
        }

        # Amazon.SageMaker.LabelingJobStatus
        "Get-SMLabelingJobList/StatusEquals"
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.ListCompilationJobsSortBy
        "Get-SMCompilationJobList/SortBy"
        {
            $v = "CreationTime","Name","Status"
            break
        }

        # Amazon.SageMaker.ListLabelingJobsForWorkteamSortByOptions
        "Get-SMLabelingJobListForWorkteam/SortBy"
        {
            $v = "CreationTime"
            break
        }

        # Amazon.SageMaker.ListWorkteamsSortByOptions
        "Get-SMWorkteamList/SortBy"
        {
            $v = "CreateDate","Name"
            break
        }

        # Amazon.SageMaker.ModelPackageSortBy
        "Get-SMModelPackageList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.ModelSortKey
        "Get-SMModelList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.MonitoringExecutionSortKey
        "Get-SMMonitoringExecutionList/SortBy"
        {
            $v = "CreationTime","ScheduledTime","Status"
            break
        }

        # Amazon.SageMaker.MonitoringScheduleSortKey
        "Get-SMMonitoringScheduleList/SortBy"
        {
            $v = "CreationTime","Name","Status"
            break
        }

        # Amazon.SageMaker.NotebookInstanceLifecycleConfigSortKey
        "Get-SMNotebookInstanceLifecycleConfigList/SortBy"
        {
            $v = "CreationTime","LastModifiedTime","Name"
            break
        }

        # Amazon.SageMaker.NotebookInstanceLifecycleConfigSortOrder
        "Get-SMNotebookInstanceLifecycleConfigList/SortOrder"
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.NotebookInstanceSortKey
        "Get-SMNotebookInstanceList/SortBy"
        {
            $v = "CreationTime","Name","Status"
            break
        }

        # Amazon.SageMaker.NotebookInstanceSortOrder
        "Get-SMNotebookInstanceList/SortOrder"
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.NotebookInstanceStatus
        "Get-SMNotebookInstanceList/StatusEquals"
        {
            $v = "Deleting","Failed","InService","Pending","Stopped","Stopping","Updating"
            break
        }

        # Amazon.SageMaker.OrderKey
        {
            ($_ -eq "Get-SMConfigList/SortOrder") -Or
            ($_ -eq "Get-SMEndpointList/SortOrder") -Or
            ($_ -eq "Get-SMModelList/SortOrder")
        }
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.ProblemType
        "New-SMAutoMLJob/ProblemType"
        {
            $v = "BinaryClassification","MulticlassClassification","Regression"
            break
        }

        # Amazon.SageMaker.ProcessingInstanceType
        "New-SMProcessingJob/ProcessingResources_ClusterConfig_InstanceType"
        {
            $v = "ml.c4.2xlarge","ml.c4.4xlarge","ml.c4.8xlarge","ml.c4.xlarge","ml.c5.18xlarge","ml.c5.2xlarge","ml.c5.4xlarge","ml.c5.9xlarge","ml.c5.xlarge","ml.m4.10xlarge","ml.m4.16xlarge","ml.m4.2xlarge","ml.m4.4xlarge","ml.m4.xlarge","ml.m5.12xlarge","ml.m5.24xlarge","ml.m5.2xlarge","ml.m5.4xlarge","ml.m5.large","ml.m5.xlarge","ml.p2.16xlarge","ml.p2.8xlarge","ml.p2.xlarge","ml.p3.16xlarge","ml.p3.2xlarge","ml.p3.8xlarge","ml.r5.12xlarge","ml.r5.16xlarge","ml.r5.24xlarge","ml.r5.2xlarge","ml.r5.4xlarge","ml.r5.8xlarge","ml.r5.large","ml.r5.xlarge","ml.t3.2xlarge","ml.t3.large","ml.t3.medium","ml.t3.xlarge"
            break
        }

        # Amazon.SageMaker.ProcessingJobStatus
        "Get-SMProcessingJobList/StatusEquals"
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.ResourceType
        {
            ($_ -eq "Get-SMSearchSuggestion/Resource") -Or
            ($_ -eq "Search-SMResource/Resource")
        }
        {
            $v = "Experiment","ExperimentTrial","ExperimentTrialComponent","TrainingJob"
            break
        }

        # Amazon.SageMaker.RetentionType
        "Remove-SMDomain/RetentionPolicy_HomeEfsFileSystem"
        {
            $v = "Delete","Retain"
            break
        }

        # Amazon.SageMaker.RootAccess
        {
            ($_ -eq "New-SMNotebookInstance/RootAccess") -Or
            ($_ -eq "Update-SMNotebookInstance/RootAccess")
        }
        {
            $v = "Disabled","Enabled"
            break
        }

        # Amazon.SageMaker.S3DataType
        "New-SMTransformJob/TransformInput_DataSource_S3DataSource_S3DataType"
        {
            $v = "AugmentedManifestFile","ManifestFile","S3Prefix"
            break
        }

        # Amazon.SageMaker.ScheduleStatus
        "Get-SMMonitoringScheduleList/StatusEquals"
        {
            $v = "Failed","Pending","Scheduled","Stopped"
            break
        }

        # Amazon.SageMaker.SearchSortOrder
        "Search-SMResource/SortOrder"
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.SortBy
        {
            ($_ -eq "Get-SMLabelingJobList/SortBy") -Or
            ($_ -eq "Get-SMProcessingJobList/SortBy") -Or
            ($_ -eq "Get-SMTrainingJobList/SortBy") -Or
            ($_ -eq "Get-SMTransformJobList/SortBy")
        }
        {
            $v = "CreationTime","Name","Status"
            break
        }

        # Amazon.SageMaker.SortExperimentsBy
        "Get-SMExperimentList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.SortOrder
        {
            ($_ -eq "Get-SMAlgorithmList/SortOrder") -Or
            ($_ -eq "Get-SMAppList/SortOrder") -Or
            ($_ -eq "Get-SMCompilationJobList/SortOrder") -Or
            ($_ -eq "Get-SMExperimentList/SortOrder") -Or
            ($_ -eq "Get-SMFlowDefinitionList/SortOrder") -Or
            ($_ -eq "Get-SMHumanTaskUiList/SortOrder") -Or
            ($_ -eq "Get-SMHyperParameterTuningJobList/SortOrder") -Or
            ($_ -eq "Get-SMLabelingJobList/SortOrder") -Or
            ($_ -eq "Get-SMLabelingJobListForWorkteam/SortOrder") -Or
            ($_ -eq "Get-SMModelPackageList/SortOrder") -Or
            ($_ -eq "Get-SMMonitoringExecutionList/SortOrder") -Or
            ($_ -eq "Get-SMMonitoringScheduleList/SortOrder") -Or
            ($_ -eq "Get-SMProcessingJobList/SortOrder") -Or
            ($_ -eq "Get-SMTrainingJobList/SortOrder") -Or
            ($_ -eq "Get-SMTrainingJobsForHyperParameterTuningJobList/SortOrder") -Or
            ($_ -eq "Get-SMTransformJobList/SortOrder") -Or
            ($_ -eq "Get-SMTrialComponentList/SortOrder") -Or
            ($_ -eq "Get-SMTrialList/SortOrder") -Or
            ($_ -eq "Get-SMUserProfileList/SortOrder") -Or
            ($_ -eq "Get-SMWorkteamList/SortOrder")
        }
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.SortTrialComponentsBy
        "Get-SMTrialComponentList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.SortTrialsBy
        "Get-SMTrialList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.SplitType
        "New-SMTransformJob/TransformInput_SplitType"
        {
            $v = "Line","None","RecordIO","TFRecord"
            break
        }

        # Amazon.SageMaker.TargetDevice
        "New-SMCompilationJob/OutputConfig_TargetDevice"
        {
            $v = "aisage","amba_cv22","deeplens","imx8qm","jetson_nano","jetson_tx1","jetson_tx2","jetson_xavier","lambda","ml_c4","ml_c5","ml_inf1","ml_m4","ml_m5","ml_p2","ml_p3","qcs603","qcs605","rasp3b","rk3288","rk3399","sbe_c","sitara_am57x"
            break
        }

        # Amazon.SageMaker.TrainingInputMode
        "New-SMHyperParameterTuningJob/TrainingJobDefinition_AlgorithmSpecification_TrainingInputMode"
        {
            $v = "File","Pipe"
            break
        }

        # Amazon.SageMaker.TrainingJobEarlyStoppingType
        "New-SMHyperParameterTuningJob/HyperParameterTuningJobConfig_TrainingJobEarlyStoppingType"
        {
            $v = "Auto","Off"
            break
        }

        # Amazon.SageMaker.TrainingJobSortByOptions
        "Get-SMTrainingJobsForHyperParameterTuningJobList/SortBy"
        {
            $v = "CreationTime","FinalObjectiveMetricValue","Name","Status"
            break
        }

        # Amazon.SageMaker.TrainingJobStatus
        {
            ($_ -eq "Get-SMTrainingJobList/StatusEquals") -Or
            ($_ -eq "Get-SMTrainingJobsForHyperParameterTuningJobList/StatusEquals")
        }
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.TransformInstanceType
        "New-SMTransformJob/TransformResources_InstanceType"
        {
            $v = "ml.c4.2xlarge","ml.c4.4xlarge","ml.c4.8xlarge","ml.c4.xlarge","ml.c5.18xlarge","ml.c5.2xlarge","ml.c5.4xlarge","ml.c5.9xlarge","ml.c5.xlarge","ml.m4.10xlarge","ml.m4.16xlarge","ml.m4.2xlarge","ml.m4.4xlarge","ml.m4.xlarge","ml.m5.12xlarge","ml.m5.24xlarge","ml.m5.2xlarge","ml.m5.4xlarge","ml.m5.large","ml.m5.xlarge","ml.p2.16xlarge","ml.p2.8xlarge","ml.p2.xlarge","ml.p3.16xlarge","ml.p3.2xlarge","ml.p3.8xlarge"
            break
        }

        # Amazon.SageMaker.TransformJobStatus
        "Get-SMTransformJobList/StatusEquals"
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.TrialComponentPrimaryStatus
        {
            ($_ -eq "New-SMTrialComponent/Status_PrimaryStatus") -Or
            ($_ -eq "Update-SMTrialComponent/Status_PrimaryStatus")
        }
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.UserProfileSortKey
        "Get-SMUserProfileList/SortBy"
        {
            $v = "CreationTime","LastModifiedTime"
            break
        }


    }

    $v |
        Where-Object { $_ -like "$wordToComplete*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$SM_map = @{
    "AppType"=@("Get-SMApp","New-SMApp","Remove-SMApp")
    "AuthMode"=@("New-SMDomain")
    "AutoMLJobObjective_MetricName"=@("New-SMAutoMLJob")
    "BatchStrategy"=@("New-SMTransformJob")
    "DataProcessing_JoinSource"=@("New-SMTransformJob")
    "DirectInternetAccess"=@("New-SMNotebookInstance")
    "HumanLoopRequestSource_AwsManagedHumanLoopRequestSource"=@("New-SMFlowDefinition")
    "HyperParameterTuningJobConfig_HyperParameterTuningJobObjective_Type"=@("New-SMHyperParameterTuningJob")
    "HyperParameterTuningJobConfig_Strategy"=@("New-SMHyperParameterTuningJob")
    "HyperParameterTuningJobConfig_TrainingJobEarlyStoppingType"=@("New-SMHyperParameterTuningJob")
    "InputConfig_Framework"=@("New-SMCompilationJob")
    "InstanceType"=@("New-SMNotebookInstance","Update-SMNotebookInstance")
    "OutputConfig_TargetDevice"=@("New-SMCompilationJob")
    "ProblemType"=@("New-SMAutoMLJob")
    "ProcessingResources_ClusterConfig_InstanceType"=@("New-SMProcessingJob")
    "Resource"=@("Get-SMSearchSuggestion","Search-SMResource")
    "ResourceSpec_InstanceType"=@("New-SMApp")
    "RetentionPolicy_HomeEfsFileSystem"=@("Remove-SMDomain")
    "RootAccess"=@("New-SMNotebookInstance","Update-SMNotebookInstance")
    "SearchExpression_Operator"=@("Search-SMResource")
    "SortBy"=@("Get-SMAlgorithmList","Get-SMAppList","Get-SMAutoMLJobList","Get-SMCandidatesForAutoMLJobList","Get-SMCodeRepositoryList","Get-SMCompilationJobList","Get-SMConfigList","Get-SMEndpointList","Get-SMExperimentList","Get-SMHyperParameterTuningJobList","Get-SMLabelingJobList","Get-SMLabelingJobListForWorkteam","Get-SMModelList","Get-SMModelPackageList","Get-SMMonitoringExecutionList","Get-SMMonitoringScheduleList","Get-SMNotebookInstanceLifecycleConfigList","Get-SMNotebookInstanceList","Get-SMProcessingJobList","Get-SMTrainingJobList","Get-SMTrainingJobsForHyperParameterTuningJobList","Get-SMTransformJobList","Get-SMTrialComponentList","Get-SMTrialList","Get-SMUserProfileList","Get-SMWorkteamList")
    "SortOrder"=@("Get-SMAlgorithmList","Get-SMAppList","Get-SMAutoMLJobList","Get-SMCandidatesForAutoMLJobList","Get-SMCodeRepositoryList","Get-SMCompilationJobList","Get-SMConfigList","Get-SMEndpointList","Get-SMExperimentList","Get-SMFlowDefinitionList","Get-SMHumanTaskUiList","Get-SMHyperParameterTuningJobList","Get-SMLabelingJobList","Get-SMLabelingJobListForWorkteam","Get-SMModelList","Get-SMModelPackageList","Get-SMMonitoringExecutionList","Get-SMMonitoringScheduleList","Get-SMNotebookInstanceLifecycleConfigList","Get-SMNotebookInstanceList","Get-SMProcessingJobList","Get-SMTrainingJobList","Get-SMTrainingJobsForHyperParameterTuningJobList","Get-SMTransformJobList","Get-SMTrialComponentList","Get-SMTrialList","Get-SMUserProfileList","Get-SMWorkteamList","Search-SMResource")
    "Status_PrimaryStatus"=@("New-SMTrialComponent","Update-SMTrialComponent")
    "StatusEquals"=@("Get-SMAutoMLJobList","Get-SMCandidatesForAutoMLJobList","Get-SMCompilationJobList","Get-SMEndpointList","Get-SMHyperParameterTuningJobList","Get-SMLabelingJobList","Get-SMMonitoringExecutionList","Get-SMMonitoringScheduleList","Get-SMNotebookInstanceList","Get-SMProcessingJobList","Get-SMTrainingJobList","Get-SMTrainingJobsForHyperParameterTuningJobList","Get-SMTransformJobList")
    "TrainingJobDefinition_AlgorithmSpecification_TrainingInputMode"=@("New-SMHyperParameterTuningJob")
    "TrainingJobDefinition_TuningObjective_Type"=@("New-SMHyperParameterTuningJob")
    "TransformInput_CompressionType"=@("New-SMTransformJob")
    "TransformInput_DataSource_S3DataSource_S3DataType"=@("New-SMTransformJob")
    "TransformInput_SplitType"=@("New-SMTransformJob")
    "TransformOutput_AssembleWith"=@("New-SMTransformJob")
    "TransformResources_InstanceType"=@("New-SMTransformJob")
    "WarmStartConfig_WarmStartType"=@("New-SMHyperParameterTuningJob")
}

_awsArgumentCompleterRegistration $SM_Completers $SM_map

$SM_SelectCompleters = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    $cmdletType = Invoke-Expression "[Amazon.PowerShell.Cmdlets.SM.$($commandName.Replace('-', ''))Cmdlet]"
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

$SM_SelectMap = @{
    "Select"=@("Add-SMResourceTag",
               "Register-SMTrialComponent",
               "New-SMAlgorithm",
               "New-SMApp",
               "New-SMAutoMLJob",
               "New-SMCodeRepository",
               "New-SMCompilationJob",
               "New-SMDomain",
               "New-SMEndpoint",
               "New-SMEndpointConfig",
               "New-SMExperiment",
               "New-SMFlowDefinition",
               "New-SMHumanTaskUi",
               "New-SMHyperParameterTuningJob",
               "New-SMLabelingJob",
               "New-SMModel",
               "New-SMModelPackage",
               "New-SMMonitoringSchedule",
               "New-SMNotebookInstance",
               "New-SMNotebookInstanceLifecycleConfig",
               "New-SMPresignedDomainUrl",
               "New-SMPresignedNotebookInstanceUrl",
               "New-SMProcessingJob",
               "New-SMTrainingJob",
               "New-SMTransformJob",
               "New-SMTrial",
               "New-SMTrialComponent",
               "New-SMUserProfile",
               "New-SMWorkteam",
               "Remove-SMAlgorithm",
               "Remove-SMApp",
               "Remove-SMCodeRepository",
               "Remove-SMDomain",
               "Remove-SMEndpoint",
               "Remove-SMEndpointConfig",
               "Remove-SMExperiment",
               "Remove-SMFlowDefinition",
               "Remove-SMModel",
               "Remove-SMModelPackage",
               "Remove-SMMonitoringSchedule",
               "Remove-SMNotebookInstance",
               "Remove-SMNotebookInstanceLifecycleConfig",
               "Remove-SMResourceTag",
               "Remove-SMTrial",
               "Remove-SMTrialComponent",
               "Remove-SMUserProfile",
               "Remove-SMWorkteam",
               "Get-SMAlgorithm",
               "Get-SMApp",
               "Get-SMAutoMLJob",
               "Get-SMCodeRepository",
               "Get-SMCompilationJob",
               "Get-SMDomain",
               "Get-SMEndpoint",
               "Get-SMEndpointConfig",
               "Get-SMExperiment",
               "Get-SMFlowDefinition",
               "Get-SMHumanTaskUi",
               "Get-SMHyperParameterTuningJob",
               "Get-SMLabelingJob",
               "Get-SMModel",
               "Get-SMModelPackage",
               "Get-SMMonitoringSchedule",
               "Get-SMNotebookInstance",
               "Get-SMNotebookInstanceLifecycleConfig",
               "Get-SMProcessingJob",
               "Get-SMSubscribedWorkteam",
               "Get-SMTrainingJob",
               "Get-SMTransformJob",
               "Get-SMTrial",
               "Get-SMTrialComponent",
               "Get-SMUserProfile",
               "Get-SMWorkforce",
               "Get-SMWorkteam",
               "Unregister-SMTrialComponent",
               "Get-SMSearchSuggestion",
               "Get-SMAlgorithmList",
               "Get-SMAppList",
               "Get-SMAutoMLJobList",
               "Get-SMCandidatesForAutoMLJobList",
               "Get-SMCodeRepositoryList",
               "Get-SMCompilationJobList",
               "Get-SMDomainList",
               "Get-SMConfigList",
               "Get-SMEndpointList",
               "Get-SMExperimentList",
               "Get-SMFlowDefinitionList",
               "Get-SMHumanTaskUiList",
               "Get-SMHyperParameterTuningJobList",
               "Get-SMLabelingJobList",
               "Get-SMLabelingJobListForWorkteam",
               "Get-SMModelPackageList",
               "Get-SMModelList",
               "Get-SMMonitoringExecutionList",
               "Get-SMMonitoringScheduleList",
               "Get-SMNotebookInstanceLifecycleConfigList",
               "Get-SMNotebookInstanceList",
               "Get-SMProcessingJobList",
               "Get-SMSubscribedWorkteamList",
               "Get-SMResourceTagList",
               "Get-SMTrainingJobList",
               "Get-SMTrainingJobsForHyperParameterTuningJobList",
               "Get-SMTransformJobList",
               "Get-SMTrialComponentList",
               "Get-SMTrialList",
               "Get-SMUserProfileList",
               "Get-SMWorkteamList",
               "Invoke-SMUiTemplateRendering",
               "Search-SMResource",
               "Start-SMMonitoringSchedule",
               "Start-SMNotebookInstance",
               "Stop-SMAutoMLJob",
               "Stop-SMCompilationJob",
               "Stop-SMHyperParameterTuningJob",
               "Stop-SMLabelingJob",
               "Stop-SMMonitoringSchedule",
               "Stop-SMNotebookInstance",
               "Stop-SMProcessingJob",
               "Stop-SMTrainingJob",
               "Stop-SMTransformJob",
               "Update-SMCodeRepository",
               "Update-SMDomain",
               "Update-SMEndpoint",
               "Update-SMEndpointWeightAndCapacity",
               "Update-SMExperiment",
               "Update-SMMonitoringSchedule",
               "Update-SMNotebookInstance",
               "Update-SMNotebookInstanceLifecycleConfig",
               "Update-SMTrial",
               "Update-SMTrialComponent",
               "Update-SMUserProfile",
               "Update-SMWorkforce",
               "Update-SMWorkteam")
}

_awsArgumentCompleterRegistration $SM_SelectCompleters $SM_SelectMap


# SIG # Begin signature block
# MIIcUAYJKoZIhvcNAQcCoIIcQTCCHD0CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCC8n+J1OhJfZ5k/
# zmzACIY0SPKT1wH2QTgWKUpqHARQHKCCF0cwggS5MIIDoaADAgECAhArd4OFAE9M
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
# DAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQg4tLBjdBSjy2YpcPKoMrwG+aU
# +6oHNqo/IR99VdZLxC8wDQYJKoZIhvcNAQEBBQAEggEAe1f84e2YP7tC9KhoGIs3
# vOVo/RlYPFL9mTjFL0ICwHaS4NbORH4wT9Njt48EnqaVK7/2y7yLbkIYG5h0Eh05
# 7ih7TCULReQkY1ACFFTqspyWK3Vuy97wjeUb8hGikrToMT8C8qqu/ls0AQJwo8Ub
# KiMhf6gq0XXAUGgTmNlnlFKFBGseNfYFLTZv1we1HQ2FhrjvBv559X2KJgO0iIYO
# TQjBmmozpFADewbD1d6wM3/iCS3UYqLlbhm489Y8w+0fShffklVwJVqaDudheaag
# 0rj0v5e8UnqNXl2itnIu7z0rY8YFNEsykyI879+tMxvmKk0VmZMdWfo0XC02DbA8
# iaGCAg8wggILBgkqhkiG9w0BCQYxggH8MIIB+AIBATB2MGIxCzAJBgNVBAYTAlVT
# MRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5j
# b20xITAfBgNVBAMTGERpZ2lDZXJ0IEFzc3VyZWQgSUQgQ0EtMQIQAwGaAjr/WLFr
# 1tXq5hfwZjAJBgUrDgMCGgUAoF0wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAc
# BgkqhkiG9w0BCQUxDxcNMjAwNjEwMjMxODAzWjAjBgkqhkiG9w0BCQQxFgQUdwEV
# vN/uo88OsfEEJz+zHXPtmDcwDQYJKoZIhvcNAQEBBQAEggEAkl2D297ccIUYbvKy
# SnDj8Tbf30kDRauJ/8u36sUioD+e+1V0lwH/N2M/NuGsdh1P+pdS5GlCzeLcs14y
# W/6Vk2Re9Wb5aa9dlCaeRODzew/VcbQ9AwcSCg+P7Qvs6KKRrRmE7m0zVp46ACs+
# acuosKUd9g2fh/ihpDEENWIp2DXjnlFx8i6aNH3gri3t3OdhqIkj1T+ZAzXRatyF
# AWALHQx+iNPfCk+9uYprYLDgriDdNUrGE0u8QNt/oi0azwKecqIB67zKnQ19OH5L
# 9/GYGLvynXMKi7Ut9dMpZe53fMQVmmIkBlqiC/q8+gyVAI23yAoonMfyaYyByjtE
# b+XbUw==
# SIG # End signature block
