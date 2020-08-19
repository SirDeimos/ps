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

# Argument completions for service Amazon Elastic Compute Cloud (EC2)


$EC2_Completers = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    switch ($("$commandName/$parameterName"))
    {
        # Amazon.EC2.Affinity
        "Edit-EC2InstancePlacement/Affinity"
        {
            $v = "default","host"
            break
        }

        # Amazon.EC2.AllocationStrategy
        "Request-EC2SpotFleet/SpotFleetRequestConfig_AllocationStrategy"
        {
            $v = "capacityOptimized","diversified","lowestPrice"
            break
        }

        # Amazon.EC2.ArchitectureValues
        "Register-EC2Image/Architecture"
        {
            $v = "arm64","i386","x86_64"
            break
        }

        # Amazon.EC2.AutoAcceptSharedAttachmentsValue
        "New-EC2TransitGateway/Options_AutoAcceptSharedAttachments"
        {
            $v = "disable","enable"
            break
        }

        # Amazon.EC2.AutoPlacement
        {
            ($_ -eq "Edit-EC2Host/AutoPlacement") -Or
            ($_ -eq "New-EC2Host/AutoPlacement")
        }
        {
            $v = "off","on"
            break
        }

        # Amazon.EC2.CapacityReservationInstancePlatform
        "Add-EC2CapacityReservation/InstancePlatform"
        {
            $v = "Linux with SQL Server Enterprise","Linux with SQL Server Standard","Linux with SQL Server Web","Linux/UNIX","Red Hat Enterprise Linux","SUSE Linux","Windows","Windows with SQL Server","Windows with SQL Server Enterprise","Windows with SQL Server Standard","Windows with SQL Server Web"
            break
        }

        # Amazon.EC2.CapacityReservationPreference
        {
            ($_ -eq "Edit-EC2InstanceCapacityReservationAttribute/CapacityReservationSpecification_CapacityReservationPreference") -Or
            ($_ -eq "New-EC2Instance/CapacityReservationSpecification_CapacityReservationPreference")
        }
        {
            $v = "none","open"
            break
        }

        # Amazon.EC2.CapacityReservationTenancy
        "Add-EC2CapacityReservation/Tenancy"
        {
            $v = "dedicated","default"
            break
        }

        # Amazon.EC2.ContainerFormat
        "New-EC2InstanceExportTask/ExportToS3Task_ContainerFormat"
        {
            $v = "ova"
            break
        }

        # Amazon.EC2.CopyTagsFromSource
        "New-EC2SnapshotBatch/CopyTagsFromSource"
        {
            $v = "volume"
            break
        }

        # Amazon.EC2.CurrencyCodeValues
        {
            ($_ -eq "New-EC2HostReservation/CurrencyCode") -Or
            ($_ -eq "New-EC2ReservedInstance/LimitPrice_CurrencyCode")
        }
        {
            $v = "USD"
            break
        }

        # Amazon.EC2.DefaultRouteTableAssociationValue
        "New-EC2TransitGateway/Options_DefaultRouteTableAssociation"
        {
            $v = "disable","enable"
            break
        }

        # Amazon.EC2.DefaultRouteTablePropagationValue
        "New-EC2TransitGateway/Options_DefaultRouteTablePropagation"
        {
            $v = "disable","enable"
            break
        }

        # Amazon.EC2.DefaultTargetCapacityType
        {
            ($_ -eq "Edit-EC2Fleet/TargetCapacitySpecification_DefaultTargetCapacityType") -Or
            ($_ -eq "New-EC2Fleet/TargetCapacitySpecification_DefaultTargetCapacityType")
        }
        {
            $v = "on-demand","spot"
            break
        }

        # Amazon.EC2.DiskImageFormat
        {
            ($_ -eq "Export-EC2Image/DiskImageFormat") -Or
            ($_ -eq "New-EC2InstanceExportTask/ExportToS3Task_DiskImageFormat")
        }
        {
            $v = "RAW","VHD","VMDK"
            break
        }

        # Amazon.EC2.DnsSupportValue
        {
            ($_ -eq "Edit-EC2TransitGatewayVpcAttachment/Options_DnsSupport") -Or
            ($_ -eq "New-EC2TransitGateway/Options_DnsSupport") -Or
            ($_ -eq "New-EC2TransitGatewayVpcAttachment/Options_DnsSupport")
        }
        {
            $v = "disable","enable"
            break
        }

        # Amazon.EC2.DomainType
        "New-EC2Address/Domain"
        {
            $v = "standard","vpc"
            break
        }

        # Amazon.EC2.EndDateType
        {
            ($_ -eq "Add-EC2CapacityReservation/EndDateType") -Or
            ($_ -eq "Edit-EC2CapacityReservation/EndDateType")
        }
        {
            $v = "limited","unlimited"
            break
        }

        # Amazon.EC2.EventType
        "Get-EC2SpotFleetRequestHistory/EventType"
        {
            $v = "error","fleetRequestChange","information","instanceChange"
            break
        }

        # Amazon.EC2.ExcessCapacityTerminationPolicy
        {
            ($_ -eq "Edit-EC2SpotFleetRequest/ExcessCapacityTerminationPolicy") -Or
            ($_ -eq "Request-EC2SpotFleet/SpotFleetRequestConfig_ExcessCapacityTerminationPolicy")
        }
        {
            $v = "default","noTermination"
            break
        }

        # Amazon.EC2.ExportEnvironment
        "New-EC2InstanceExportTask/TargetEnvironment"
        {
            $v = "citrix","microsoft","vmware"
            break
        }

        # Amazon.EC2.FleetCapacityReservationUsageStrategy
        "New-EC2Fleet/OnDemandOptions_CapacityReservationOptions_UsageStrategy"
        {
            $v = "use-capacity-reservations-first"
            break
        }

        # Amazon.EC2.FleetEventType
        "Get-EC2FleetHistory/EventType"
        {
            $v = "fleet-change","instance-change","service-error"
            break
        }

        # Amazon.EC2.FleetExcessCapacityTerminationPolicy
        {
            ($_ -eq "Edit-EC2Fleet/ExcessCapacityTerminationPolicy") -Or
            ($_ -eq "New-EC2Fleet/ExcessCapacityTerminationPolicy")
        }
        {
            $v = "no-termination","termination"
            break
        }

        # Amazon.EC2.FleetOnDemandAllocationStrategy
        "New-EC2Fleet/OnDemandOptions_AllocationStrategy"
        {
            $v = "lowest-price","prioritized"
            break
        }

        # Amazon.EC2.FleetType
        {
            ($_ -eq "Request-EC2SpotFleet/SpotFleetRequestConfig_Type") -Or
            ($_ -eq "New-EC2Fleet/Type")
        }
        {
            $v = "instant","maintain","request"
            break
        }

        # Amazon.EC2.FlowLogsResourceType
        "New-EC2FlowLog/ResourceType"
        {
            $v = "NetworkInterface","Subnet","VPC"
            break
        }

        # Amazon.EC2.FpgaImageAttributeName
        {
            ($_ -eq "Edit-EC2FpgaImageAttribute/Attribute") -Or
            ($_ -eq "Get-EC2FpgaImageAttribute/Attribute")
        }
        {
            $v = "description","loadPermission","name","productCodes"
            break
        }

        # Amazon.EC2.GatewayType
        {
            ($_ -eq "New-EC2CustomerGateway/Type") -Or
            ($_ -eq "New-EC2VpnGateway/Type")
        }
        {
            $v = "ipsec.1"
            break
        }

        # Amazon.EC2.HostRecovery
        {
            ($_ -eq "Edit-EC2Host/HostRecovery") -Or
            ($_ -eq "New-EC2Host/HostRecovery")
        }
        {
            $v = "off","on"
            break
        }

        # Amazon.EC2.HostTenancy
        "Edit-EC2InstancePlacement/Tenancy"
        {
            $v = "dedicated","host"
            break
        }

        # Amazon.EC2.HttpTokensState
        {
            ($_ -eq "Edit-EC2InstanceMetadataOption/HttpTokens") -Or
            ($_ -eq "New-EC2Instance/MetadataOptions_HttpTokens")
        }
        {
            $v = "optional","required"
            break
        }

        # Amazon.EC2.ImageAttributeName
        "Get-EC2ImageAttribute/Attribute"
        {
            $v = "blockDeviceMapping","description","kernel","launchPermission","productCodes","ramdisk","sriovNetSupport"
            break
        }

        # Amazon.EC2.InstanceAttributeName
        {
            ($_ -eq "Edit-EC2InstanceAttribute/Attribute") -Or
            ($_ -eq "Get-EC2InstanceAttribute/Attribute") -Or
            ($_ -eq "Reset-EC2InstanceAttribute/Attribute")
        }
        {
            $v = "blockDeviceMapping","disableApiTermination","ebsOptimized","enaSupport","groupSet","instanceInitiatedShutdownBehavior","instanceType","kernel","productCodes","ramdisk","rootDeviceName","sourceDestCheck","sriovNetSupport","userData"
            break
        }

        # Amazon.EC2.InstanceInterruptionBehavior
        {
            ($_ -eq "Request-EC2SpotInstance/InstanceInterruptionBehavior") -Or
            ($_ -eq "Request-EC2SpotFleet/SpotFleetRequestConfig_InstanceInterruptionBehavior")
        }
        {
            $v = "hibernate","stop","terminate"
            break
        }

        # Amazon.EC2.InstanceMatchCriteria
        "Add-EC2CapacityReservation/InstanceMatchCriteria"
        {
            $v = "open","targeted"
            break
        }

        # Amazon.EC2.InstanceMetadataEndpointState
        {
            ($_ -eq "Edit-EC2InstanceMetadataOption/HttpEndpoint") -Or
            ($_ -eq "New-EC2Instance/MetadataOptions_HttpEndpoint")
        }
        {
            $v = "disabled","enabled"
            break
        }

        # Amazon.EC2.InstanceType
        {
            ($_ -eq "Get-EC2ReservedInstancesOffering/InstanceType") -Or
            ($_ -eq "New-EC2Instance/InstanceType") -Or
            ($_ -eq "Request-EC2SpotInstance/LaunchSpecification_InstanceType")
        }
        {
            $v = "a1.2xlarge","a1.4xlarge","a1.large","a1.medium","a1.metal","a1.xlarge","c1.medium","c1.xlarge","c3.2xlarge","c3.4xlarge","c3.8xlarge","c3.large","c3.xlarge","c4.2xlarge","c4.4xlarge","c4.8xlarge","c4.large","c4.xlarge","c5.12xlarge","c5.18xlarge","c5.24xlarge","c5.2xlarge","c5.4xlarge","c5.9xlarge","c5.large","c5.metal","c5.xlarge","c5a.12xlarge","c5a.16xlarge","c5a.24xlarge","c5a.2xlarge","c5a.4xlarge","c5a.8xlarge","c5a.large","c5a.xlarge","c5d.12xlarge","c5d.18xlarge","c5d.24xlarge","c5d.2xlarge","c5d.4xlarge","c5d.9xlarge","c5d.large","c5d.metal","c5d.xlarge","c5n.18xlarge","c5n.2xlarge","c5n.4xlarge","c5n.9xlarge","c5n.large","c5n.xlarge","c6g.12xlarge","c6g.16xlarge","c6g.2xlarge","c6g.4xlarge","c6g.8xlarge","c6g.large","c6g.medium","c6g.metal","c6g.xlarge","cc1.4xlarge","cc2.8xlarge","cg1.4xlarge","cr1.8xlarge","d2.2xlarge","d2.4xlarge","d2.8xlarge","d2.xlarge","f1.16xlarge","f1.2xlarge","f1.4xlarge","g2.2xlarge","g2.8xlarge","g3.16xlarge","g3.4xlarge","g3.8xlarge","g3s.xlarge","g4dn.12xlarge","g4dn.16xlarge","g4dn.2xlarge","g4dn.4xlarge","g4dn.8xlarge","g4dn.metal","g4dn.xlarge","h1.16xlarge","h1.2xlarge","h1.4xlarge","h1.8xlarge","hi1.4xlarge","hs1.8xlarge","i2.2xlarge","i2.4xlarge","i2.8xlarge","i2.xlarge","i3.16xlarge","i3.2xlarge","i3.4xlarge","i3.8xlarge","i3.large","i3.metal","i3.xlarge","i3en.12xlarge","i3en.24xlarge","i3en.2xlarge","i3en.3xlarge","i3en.6xlarge","i3en.large","i3en.metal","i3en.xlarge","inf1.24xlarge","inf1.2xlarge","inf1.6xlarge","inf1.xlarge","m1.large","m1.medium","m1.small","m1.xlarge","m2.2xlarge","m2.4xlarge","m2.xlarge","m3.2xlarge","m3.large","m3.medium","m3.xlarge","m4.10xlarge","m4.16xlarge","m4.2xlarge","m4.4xlarge","m4.large","m4.xlarge","m5.12xlarge","m5.16xlarge","m5.24xlarge","m5.2xlarge","m5.4xlarge","m5.8xlarge","m5.large","m5.metal","m5.xlarge","m5a.12xlarge","m5a.16xlarge","m5a.24xlarge","m5a.2xlarge","m5a.4xlarge","m5a.8xlarge","m5a.large","m5a.xlarge","m5ad.12xlarge","m5ad.16xlarge","m5ad.24xlarge","m5ad.2xlarge","m5ad.4xlarge","m5ad.8xlarge","m5ad.large","m5ad.xlarge","m5d.12xlarge","m5d.16xlarge","m5d.24xlarge","m5d.2xlarge","m5d.4xlarge","m5d.8xlarge","m5d.large","m5d.metal","m5d.xlarge","m5dn.12xlarge","m5dn.16xlarge","m5dn.24xlarge","m5dn.2xlarge","m5dn.4xlarge","m5dn.8xlarge","m5dn.large","m5dn.xlarge","m5n.12xlarge","m5n.16xlarge","m5n.24xlarge","m5n.2xlarge","m5n.4xlarge","m5n.8xlarge","m5n.large","m5n.xlarge","m6g.12xlarge","m6g.16xlarge","m6g.2xlarge","m6g.4xlarge","m6g.8xlarge","m6g.large","m6g.medium","m6g.metal","m6g.xlarge","p2.16xlarge","p2.8xlarge","p2.xlarge","p3.16xlarge","p3.2xlarge","p3.8xlarge","p3dn.24xlarge","r3.2xlarge","r3.4xlarge","r3.8xlarge","r3.large","r3.xlarge","r4.16xlarge","r4.2xlarge","r4.4xlarge","r4.8xlarge","r4.large","r4.xlarge","r5.12xlarge","r5.16xlarge","r5.24xlarge","r5.2xlarge","r5.4xlarge","r5.8xlarge","r5.large","r5.metal","r5.xlarge","r5a.12xlarge","r5a.16xlarge","r5a.24xlarge","r5a.2xlarge","r5a.4xlarge","r5a.8xlarge","r5a.large","r5a.xlarge","r5ad.12xlarge","r5ad.16xlarge","r5ad.24xlarge","r5ad.2xlarge","r5ad.4xlarge","r5ad.8xlarge","r5ad.large","r5ad.xlarge","r5d.12xlarge","r5d.16xlarge","r5d.24xlarge","r5d.2xlarge","r5d.4xlarge","r5d.8xlarge","r5d.large","r5d.metal","r5d.xlarge","r5dn.12xlarge","r5dn.16xlarge","r5dn.24xlarge","r5dn.2xlarge","r5dn.4xlarge","r5dn.8xlarge","r5dn.large","r5dn.xlarge","r5n.12xlarge","r5n.16xlarge","r5n.24xlarge","r5n.2xlarge","r5n.4xlarge","r5n.8xlarge","r5n.large","r5n.xlarge","r6g.12xlarge","r6g.16xlarge","r6g.2xlarge","r6g.4xlarge","r6g.8xlarge","r6g.large","r6g.medium","r6g.metal","r6g.xlarge","t1.micro","t2.2xlarge","t2.large","t2.medium","t2.micro","t2.nano","t2.small","t2.xlarge","t3.2xlarge","t3.large","t3.medium","t3.micro","t3.nano","t3.small","t3.xlarge","t3a.2xlarge","t3a.large","t3a.medium","t3a.micro","t3a.nano","t3a.small","t3a.xlarge","u-12tb1.metal","u-18tb1.metal","u-24tb1.metal","u-6tb1.metal","u-9tb1.metal","x1.16xlarge","x1.32xlarge","x1e.16xlarge","x1e.2xlarge","x1e.32xlarge","x1e.4xlarge","x1e.8xlarge","x1e.xlarge","z1d.12xlarge","z1d.2xlarge","z1d.3xlarge","z1d.6xlarge","z1d.large","z1d.metal","z1d.xlarge"
            break
        }

        # Amazon.EC2.InterfacePermissionType
        "New-EC2NetworkInterfacePermission/Permission"
        {
            $v = "EIP-ASSOCIATE","INSTANCE-ATTACH"
            break
        }

        # Amazon.EC2.Ipv6SupportValue
        {
            ($_ -eq "Edit-EC2TransitGatewayVpcAttachment/Options_Ipv6Support") -Or
            ($_ -eq "New-EC2TransitGatewayVpcAttachment/Options_Ipv6Support")
        }
        {
            $v = "disable","enable"
            break
        }

        # Amazon.EC2.LocationType
        "Get-EC2InstanceTypeOffering/LocationType"
        {
            $v = "availability-zone","availability-zone-id","region"
            break
        }

        # Amazon.EC2.LogDestinationType
        "New-EC2FlowLog/LogDestinationType"
        {
            $v = "cloud-watch-logs","s3"
            break
        }

        # Amazon.EC2.ModifyAvailabilityZoneOptInStatus
        "Edit-EC2AvailabilityZoneGroup/OptInStatus"
        {
            $v = "not-opted-in","opted-in"
            break
        }

        # Amazon.EC2.MulticastSupportValue
        "New-EC2TransitGateway/Options_MulticastSupport"
        {
            $v = "disable","enable"
            break
        }

        # Amazon.EC2.NetworkInterfaceAttribute
        "Get-EC2NetworkInterfaceAttribute/Attribute"
        {
            $v = "attachment","description","groupSet","sourceDestCheck"
            break
        }

        # Amazon.EC2.NetworkInterfaceCreationType
        "New-EC2NetworkInterface/InterfaceType"
        {
            $v = "efa"
            break
        }

        # Amazon.EC2.OfferingClassType
        {
            ($_ -eq "Get-EC2ReservedInstance/OfferingClass") -Or
            ($_ -eq "Get-EC2ReservedInstancesOffering/OfferingClass")
        }
        {
            $v = "convertible","standard"
            break
        }

        # Amazon.EC2.OfferingTypeValues
        {
            ($_ -eq "Get-EC2ReservedInstance/OfferingType") -Or
            ($_ -eq "Get-EC2ReservedInstancesOffering/OfferingType")
        }
        {
            $v = "All Upfront","Heavy Utilization","Light Utilization","Medium Utilization","No Upfront","Partial Upfront"
            break
        }

        # Amazon.EC2.OnDemandAllocationStrategy
        "Request-EC2SpotFleet/SpotFleetRequestConfig_OnDemandAllocationStrategy"
        {
            $v = "lowestPrice","prioritized"
            break
        }

        # Amazon.EC2.OperationType
        {
            ($_ -eq "Edit-EC2FpgaImageAttribute/OperationType") -Or
            ($_ -eq "Edit-EC2ImageAttribute/OperationType") -Or
            ($_ -eq "Edit-EC2SnapshotAttribute/OperationType")
        }
        {
            $v = "add","remove"
            break
        }

        # Amazon.EC2.PlacementStrategy
        "New-EC2PlacementGroup/Strategy"
        {
            $v = "cluster","partition","spread"
            break
        }

        # Amazon.EC2.ReportStatusType
        "Send-EC2InstanceStatus/Status"
        {
            $v = "impaired","ok"
            break
        }

        # Amazon.EC2.ResetFpgaImageAttributeName
        "Reset-EC2FpgaImageAttribute/Attribute"
        {
            $v = "loadPermission"
            break
        }

        # Amazon.EC2.ResetImageAttributeName
        "Reset-EC2ImageAttribute/Attribute"
        {
            $v = "launchPermission"
            break
        }

        # Amazon.EC2.RIProductDescription
        "Get-EC2ReservedInstancesOffering/ProductDescription"
        {
            $v = "Linux/UNIX","Linux/UNIX (Amazon VPC)","Windows","Windows (Amazon VPC)"
            break
        }

        # Amazon.EC2.RuleAction
        {
            ($_ -eq "New-EC2NetworkAclEntry/RuleAction") -Or
            ($_ -eq "Set-EC2NetworkAclEntry/RuleAction")
        }
        {
            $v = "allow","deny"
            break
        }

        # Amazon.EC2.ShutdownBehavior
        "New-EC2Instance/InstanceInitiatedShutdownBehavior"
        {
            $v = "stop","terminate"
            break
        }

        # Amazon.EC2.SnapshotAttributeName
        {
            ($_ -eq "Edit-EC2SnapshotAttribute/Attribute") -Or
            ($_ -eq "Get-EC2SnapshotAttribute/Attribute") -Or
            ($_ -eq "Reset-EC2SnapshotAttribute/Attribute")
        }
        {
            $v = "createVolumePermission","productCodes"
            break
        }

        # Amazon.EC2.SpotAllocationStrategy
        "New-EC2Fleet/SpotOptions_AllocationStrategy"
        {
            $v = "capacity-optimized","diversified","lowest-price"
            break
        }

        # Amazon.EC2.SpotInstanceInterruptionBehavior
        "New-EC2Fleet/SpotOptions_InstanceInterruptionBehavior"
        {
            $v = "hibernate","stop","terminate"
            break
        }

        # Amazon.EC2.SpotInstanceType
        "Request-EC2SpotInstance/Type"
        {
            $v = "one-time","persistent"
            break
        }

        # Amazon.EC2.Tenancy
        {
            ($_ -eq "Get-EC2ReservedInstancesOffering/InstanceTenancy") -Or
            ($_ -eq "New-EC2Vpc/InstanceTenancy") -Or
            ($_ -eq "Request-EC2SpotInstance/LaunchSpecification_Placement_Tenancy") -Or
            ($_ -eq "New-EC2Instance/Placement_Tenancy")
        }
        {
            $v = "dedicated","default","host"
            break
        }

        # Amazon.EC2.TrafficDirection
        {
            ($_ -eq "Edit-EC2TrafficMirrorFilterRule/TrafficDirection") -Or
            ($_ -eq "New-EC2TrafficMirrorFilterRule/TrafficDirection")
        }
        {
            $v = "egress","ingress"
            break
        }

        # Amazon.EC2.TrafficMirrorRuleAction
        {
            ($_ -eq "Edit-EC2TrafficMirrorFilterRule/RuleAction") -Or
            ($_ -eq "New-EC2TrafficMirrorFilterRule/RuleAction")
        }
        {
            $v = "accept","reject"
            break
        }

        # Amazon.EC2.TrafficType
        "New-EC2FlowLog/TrafficType"
        {
            $v = "ACCEPT","ALL","REJECT"
            break
        }

        # Amazon.EC2.TransportProtocol
        "New-EC2ClientVpnEndpoint/TransportProtocol"
        {
            $v = "tcp","udp"
            break
        }

        # Amazon.EC2.UnlimitedSupportedInstanceFamily
        {
            ($_ -eq "Edit-EC2DefaultCreditSpecification/InstanceFamily") -Or
            ($_ -eq "Get-EC2DefaultCreditSpecification/InstanceFamily")
        }
        {
            $v = "t2","t3","t3a"
            break
        }

        # Amazon.EC2.VolumeAttributeName
        "Get-EC2VolumeAttribute/Attribute"
        {
            $v = "autoEnableIO","productCodes"
            break
        }

        # Amazon.EC2.VolumeType
        {
            ($_ -eq "Edit-EC2Volume/VolumeType") -Or
            ($_ -eq "New-EC2Volume/VolumeType")
        }
        {
            $v = "gp2","io1","sc1","st1","standard"
            break
        }

        # Amazon.EC2.VpcAttributeName
        "Get-EC2VpcAttribute/Attribute"
        {
            $v = "enableDnsHostnames","enableDnsSupport"
            break
        }

        # Amazon.EC2.VpcEndpointType
        "New-EC2VpcEndpoint/VpcEndpointType"
        {
            $v = "Gateway","Interface"
            break
        }

        # Amazon.EC2.VpcTenancy
        "Edit-EC2VpcTenancy/InstanceTenancy"
        {
            $v = "default"
            break
        }

        # Amazon.EC2.VpnEcmpSupportValue
        "New-EC2TransitGateway/Options_VpnEcmpSupport"
        {
            $v = "disable","enable"
            break
        }


    }

    $v |
        Where-Object { $_ -like "$wordToComplete*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$EC2_map = @{
    "Affinity"=@("Edit-EC2InstancePlacement")
    "Architecture"=@("Register-EC2Image")
    "Attribute"=@("Edit-EC2FpgaImageAttribute","Edit-EC2InstanceAttribute","Edit-EC2SnapshotAttribute","Get-EC2FpgaImageAttribute","Get-EC2ImageAttribute","Get-EC2InstanceAttribute","Get-EC2NetworkInterfaceAttribute","Get-EC2SnapshotAttribute","Get-EC2VolumeAttribute","Get-EC2VpcAttribute","Reset-EC2FpgaImageAttribute","Reset-EC2ImageAttribute","Reset-EC2InstanceAttribute","Reset-EC2SnapshotAttribute")
    "AutoPlacement"=@("Edit-EC2Host","New-EC2Host")
    "CapacityReservationSpecification_CapacityReservationPreference"=@("Edit-EC2InstanceCapacityReservationAttribute","New-EC2Instance")
    "CopyTagsFromSource"=@("New-EC2SnapshotBatch")
    "CurrencyCode"=@("New-EC2HostReservation")
    "DiskImageFormat"=@("Export-EC2Image")
    "Domain"=@("New-EC2Address")
    "EndDateType"=@("Add-EC2CapacityReservation","Edit-EC2CapacityReservation")
    "EventType"=@("Get-EC2FleetHistory","Get-EC2SpotFleetRequestHistory")
    "ExcessCapacityTerminationPolicy"=@("Edit-EC2Fleet","Edit-EC2SpotFleetRequest","New-EC2Fleet")
    "ExportToS3Task_ContainerFormat"=@("New-EC2InstanceExportTask")
    "ExportToS3Task_DiskImageFormat"=@("New-EC2InstanceExportTask")
    "HostRecovery"=@("Edit-EC2Host","New-EC2Host")
    "HttpEndpoint"=@("Edit-EC2InstanceMetadataOption")
    "HttpTokens"=@("Edit-EC2InstanceMetadataOption")
    "InstanceFamily"=@("Edit-EC2DefaultCreditSpecification","Get-EC2DefaultCreditSpecification")
    "InstanceInitiatedShutdownBehavior"=@("New-EC2Instance")
    "InstanceInterruptionBehavior"=@("Request-EC2SpotInstance")
    "InstanceMatchCriteria"=@("Add-EC2CapacityReservation")
    "InstancePlatform"=@("Add-EC2CapacityReservation")
    "InstanceTenancy"=@("Edit-EC2VpcTenancy","Get-EC2ReservedInstancesOffering","New-EC2Vpc")
    "InstanceType"=@("Get-EC2ReservedInstancesOffering","New-EC2Instance")
    "InterfaceType"=@("New-EC2NetworkInterface")
    "LaunchSpecification_InstanceType"=@("Request-EC2SpotInstance")
    "LaunchSpecification_Placement_Tenancy"=@("Request-EC2SpotInstance")
    "LimitPrice_CurrencyCode"=@("New-EC2ReservedInstance")
    "LocationType"=@("Get-EC2InstanceTypeOffering")
    "LogDestinationType"=@("New-EC2FlowLog")
    "MetadataOptions_HttpEndpoint"=@("New-EC2Instance")
    "MetadataOptions_HttpTokens"=@("New-EC2Instance")
    "OfferingClass"=@("Get-EC2ReservedInstance","Get-EC2ReservedInstancesOffering")
    "OfferingType"=@("Get-EC2ReservedInstance","Get-EC2ReservedInstancesOffering")
    "OnDemandOptions_AllocationStrategy"=@("New-EC2Fleet")
    "OnDemandOptions_CapacityReservationOptions_UsageStrategy"=@("New-EC2Fleet")
    "OperationType"=@("Edit-EC2FpgaImageAttribute","Edit-EC2ImageAttribute","Edit-EC2SnapshotAttribute")
    "OptInStatus"=@("Edit-EC2AvailabilityZoneGroup")
    "Options_AutoAcceptSharedAttachments"=@("New-EC2TransitGateway")
    "Options_DefaultRouteTableAssociation"=@("New-EC2TransitGateway")
    "Options_DefaultRouteTablePropagation"=@("New-EC2TransitGateway")
    "Options_DnsSupport"=@("Edit-EC2TransitGatewayVpcAttachment","New-EC2TransitGateway","New-EC2TransitGatewayVpcAttachment")
    "Options_Ipv6Support"=@("Edit-EC2TransitGatewayVpcAttachment","New-EC2TransitGatewayVpcAttachment")
    "Options_MulticastSupport"=@("New-EC2TransitGateway")
    "Options_VpnEcmpSupport"=@("New-EC2TransitGateway")
    "Permission"=@("New-EC2NetworkInterfacePermission")
    "Placement_Tenancy"=@("New-EC2Instance")
    "ProductDescription"=@("Get-EC2ReservedInstancesOffering")
    "ResourceType"=@("New-EC2FlowLog")
    "RuleAction"=@("Edit-EC2TrafficMirrorFilterRule","New-EC2NetworkAclEntry","New-EC2TrafficMirrorFilterRule","Set-EC2NetworkAclEntry")
    "SpotFleetRequestConfig_AllocationStrategy"=@("Request-EC2SpotFleet")
    "SpotFleetRequestConfig_ExcessCapacityTerminationPolicy"=@("Request-EC2SpotFleet")
    "SpotFleetRequestConfig_InstanceInterruptionBehavior"=@("Request-EC2SpotFleet")
    "SpotFleetRequestConfig_OnDemandAllocationStrategy"=@("Request-EC2SpotFleet")
    "SpotFleetRequestConfig_Type"=@("Request-EC2SpotFleet")
    "SpotOptions_AllocationStrategy"=@("New-EC2Fleet")
    "SpotOptions_InstanceInterruptionBehavior"=@("New-EC2Fleet")
    "Status"=@("Send-EC2InstanceStatus")
    "Strategy"=@("New-EC2PlacementGroup")
    "TargetCapacitySpecification_DefaultTargetCapacityType"=@("Edit-EC2Fleet","New-EC2Fleet")
    "TargetEnvironment"=@("New-EC2InstanceExportTask")
    "Tenancy"=@("Add-EC2CapacityReservation","Edit-EC2InstancePlacement")
    "TrafficDirection"=@("Edit-EC2TrafficMirrorFilterRule","New-EC2TrafficMirrorFilterRule")
    "TrafficType"=@("New-EC2FlowLog")
    "TransportProtocol"=@("New-EC2ClientVpnEndpoint")
    "Type"=@("New-EC2CustomerGateway","New-EC2Fleet","New-EC2VpnGateway","Request-EC2SpotInstance")
    "VolumeType"=@("Edit-EC2Volume","New-EC2Volume")
    "VpcEndpointType"=@("New-EC2VpcEndpoint")
}

_awsArgumentCompleterRegistration $EC2_Completers $EC2_map

$EC2_SelectCompleters = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    $cmdletType = Invoke-Expression "[Amazon.PowerShell.Cmdlets.EC2.$($commandName.Replace('-', ''))Cmdlet]"
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

$EC2_SelectMap = @{
    "Select"=@("Approve-EC2ReservedInstancesExchangeQuote",
               "Approve-EC2TransitGatewayPeeringAttachment",
               "Approve-EC2TransitGatewayVpcAttachment",
               "Approve-EC2EndpointConnection",
               "Approve-EC2VpcPeeringConnection",
               "Start-EC2ByoipCidrAdvertisement",
               "New-EC2Address",
               "New-EC2Host",
               "Add-EC2SecurityGroupToClientVpnTargetNetwork",
               "Register-EC2Ipv6AddressList",
               "Register-EC2PrivateIpAddress",
               "Register-EC2Address",
               "Register-EC2ClientVpnTargetNetwork",
               "Register-EC2DhcpOption",
               "Register-EC2IamInstanceProfile",
               "Register-EC2RouteTable",
               "Register-EC2SubnetCidrBlock",
               "Register-EC2TransitGatewayMulticastDomain",
               "Register-EC2TransitGatewayRouteTable",
               "Register-EC2VpcCidrBlock",
               "Add-EC2ClassicLinkVpc",
               "Add-EC2InternetGateway",
               "Add-EC2NetworkInterface",
               "Add-EC2Volume",
               "Add-EC2VpnGateway",
               "Grant-EC2ClientVpnIngress",
               "Grant-EC2SecurityGroupEgress",
               "Grant-EC2SecurityGroupIngress",
               "New-EC2InstanceBundle",
               "Stop-EC2BundleTask",
               "Remove-EC2CapacityReservation",
               "Stop-EC2ExportTask",
               "Stop-EC2ImportTask",
               "Stop-EC2ReservedInstancesListing",
               "Stop-EC2SpotFleetRequest",
               "Stop-EC2SpotInstanceRequest",
               "Confirm-EC2ProductInstance",
               "Copy-EC2FpgaImage",
               "Copy-EC2Image",
               "Copy-EC2Snapshot",
               "Add-EC2CapacityReservation",
               "New-EC2ClientVpnEndpoint",
               "New-EC2ClientVpnRoute",
               "New-EC2CustomerGateway",
               "New-EC2DefaultSubnet",
               "New-EC2DefaultVpc",
               "New-EC2DhcpOption",
               "New-EC2EgressOnlyInternetGateway",
               "New-EC2Fleet",
               "New-EC2FlowLog",
               "New-EC2FpgaImage",
               "New-EC2Image",
               "New-EC2InstanceExportTask",
               "New-EC2InternetGateway",
               "New-EC2KeyPair",
               "New-EC2LaunchTemplate",
               "New-EC2LaunchTemplateVersion",
               "New-EC2LocalGatewayRoute",
               "New-EC2LocalGatewayRouteTableVpcAssociation",
               "New-EC2NatGateway",
               "New-EC2NetworkAcl",
               "New-EC2NetworkAclEntry",
               "New-EC2NetworkInterface",
               "New-EC2NetworkInterfacePermission",
               "New-EC2PlacementGroup",
               "New-EC2ReservedInstancesListing",
               "New-EC2Route",
               "New-EC2RouteTable",
               "New-EC2SecurityGroup",
               "New-EC2Snapshot",
               "New-EC2SnapshotBatch",
               "New-EC2SpotDatafeedSubscription",
               "New-EC2Subnet",
               "New-EC2Tag",
               "New-EC2TrafficMirrorFilter",
               "New-EC2TrafficMirrorFilterRule",
               "New-EC2TrafficMirrorSession",
               "New-EC2TrafficMirrorTarget",
               "New-EC2TransitGateway",
               "New-EC2TransitGatewayMulticastDomain",
               "New-EC2TransitGatewayPeeringAttachment",
               "New-EC2TransitGatewayRoute",
               "New-EC2TransitGatewayRouteTable",
               "New-EC2TransitGatewayVpcAttachment",
               "New-EC2Volume",
               "New-EC2Vpc",
               "New-EC2VpcEndpoint",
               "New-EC2VpcEndpointConnectionNotification",
               "New-EC2VpcEndpointServiceConfiguration",
               "New-EC2VpcPeeringConnection",
               "New-EC2VpnConnection",
               "New-EC2VpnConnectionRoute",
               "New-EC2VpnGateway",
               "Remove-EC2ClientVpnEndpoint",
               "Remove-EC2ClientVpnRoute",
               "Remove-EC2CustomerGateway",
               "Remove-EC2DhcpOption",
               "Remove-EC2EgressOnlyInternetGateway",
               "Remove-EC2Fleet",
               "Remove-EC2FlowLog",
               "Remove-EC2FpgaImage",
               "Remove-EC2InternetGateway",
               "Remove-EC2KeyPair",
               "Remove-EC2LaunchTemplate",
               "Remove-EC2TemplateVersion",
               "Remove-EC2LocalGatewayRoute",
               "Remove-EC2LocalGatewayRouteTableVpcAssociation",
               "Remove-EC2NatGateway",
               "Remove-EC2NetworkAcl",
               "Remove-EC2NetworkAclEntry",
               "Remove-EC2NetworkInterface",
               "Remove-EC2NetworkInterfacePermission",
               "Remove-EC2PlacementGroup",
               "Remove-EC2QueuedReservedInstance",
               "Remove-EC2Route",
               "Remove-EC2RouteTable",
               "Remove-EC2SecurityGroup",
               "Remove-EC2Snapshot",
               "Remove-EC2SpotDatafeedSubscription",
               "Remove-EC2Subnet",
               "Remove-EC2Tag",
               "Remove-EC2TrafficMirrorFilter",
               "Remove-EC2TrafficMirrorFilterRule",
               "Remove-EC2TrafficMirrorSession",
               "Remove-EC2TrafficMirrorTarget",
               "Remove-EC2TransitGateway",
               "Remove-EC2TransitGatewayMulticastDomain",
               "Remove-EC2TransitGatewayPeeringAttachment",
               "Remove-EC2TransitGatewayRoute",
               "Remove-EC2TransitGatewayRouteTable",
               "Remove-EC2TransitGatewayVpcAttachment",
               "Remove-EC2Volume",
               "Remove-EC2Vpc",
               "Remove-EC2EndpointConnectionNotification",
               "Remove-EC2VpcEndpoint",
               "Remove-EC2EndpointServiceConfiguration",
               "Remove-EC2VpcPeeringConnection",
               "Remove-EC2VpnConnection",
               "Remove-EC2VpnConnectionRoute",
               "Remove-EC2VpnGateway",
               "Unregister-EC2ByoipCidr",
               "Unregister-EC2Image",
               "Unregister-EC2InstanceEventNotificationAttribute",
               "Unregister-EC2TransitGatewayMulticastGroupMember",
               "Unregister-EC2TransitGatewayMulticastGroupSource",
               "Get-EC2AccountAttribute",
               "Get-EC2Address",
               "Get-EC2AggregateIdFormat",
               "Get-EC2AvailabilityZone",
               "Get-EC2BundleTask",
               "Get-EC2ByoipCidr",
               "Get-EC2CapacityReservation",
               "Get-EC2ClassicLinkInstance",
               "Get-EC2ClientVpnAuthorizationRule",
               "Get-EC2ClientVpnConnection",
               "Get-EC2ClientVpnEndpoint",
               "Get-EC2ClientVpnRoute",
               "Get-EC2ClientVpnTargetNetwork",
               "Get-EC2CoipPool",
               "Get-EC2CustomerGateway",
               "Get-EC2DhcpOption",
               "Get-EC2EgressOnlyInternetGatewayList",
               "Get-EC2ElasticGpu",
               "Get-EC2ExportImageTask",
               "Get-EC2ExportTask",
               "Get-EC2FastSnapshotRestore",
               "Get-EC2FleetHistory",
               "Get-EC2FleetInstanceList",
               "Get-EC2FleetList",
               "Get-EC2FlowLog",
               "Get-EC2FpgaImageAttribute",
               "Get-EC2FpgaImage",
               "Get-EC2HostReservationOffering",
               "Get-EC2HostReservation",
               "Get-EC2Host",
               "Get-EC2IamInstanceProfileAssociation",
               "Get-EC2IdentityIdFormat",
               "Get-EC2IdFormat",
               "Get-EC2ImageAttribute",
               "Get-EC2Image",
               "Get-EC2ImportImageTask",
               "Get-EC2ImportSnapshotTask",
               "Get-EC2InstanceAttribute",
               "Get-EC2CreditSpecification",
               "Get-EC2InstanceEventNotificationAttribute",
               "Get-EC2Instance",
               "Get-EC2InstanceStatus",
               "Get-EC2InstanceTypeOffering",
               "Get-EC2InstanceType",
               "Get-EC2InternetGateway",
               "Get-EC2Ipv6Pool",
               "Get-EC2KeyPair",
               "Get-EC2Template",
               "Get-EC2TemplateVersion",
               "Get-EC2LocalGatewayRouteTable",
               "Get-EC2LocalGatewayRouteTableVirtualInterfaceGroupAssociation",
               "Get-EC2LocalGatewayRouteTableVpcAssociation",
               "Get-EC2LocalGateway",
               "Get-EC2LocalGatewayVirtualInterfaceGroup",
               "Get-EC2LocalGatewayVirtualInterface",
               "Get-EC2MovingAddress",
               "Get-EC2NatGateway",
               "Get-EC2NetworkAcl",
               "Get-EC2NetworkInterfaceAttribute",
               "Get-EC2NetworkInterfacePermission",
               "Get-EC2NetworkInterface",
               "Get-EC2PlacementGroup",
               "Get-EC2PrefixList",
               "Get-EC2PrincipalIdFormat",
               "Get-EC2PublicIpv4Pool",
               "Get-EC2Region",
               "Get-EC2ReservedInstance",
               "Get-EC2ReservedInstancesListing",
               "Get-EC2ReservedInstancesModification",
               "Get-EC2ReservedInstancesOffering",
               "Get-EC2RouteTable",
               "Get-EC2ScheduledInstanceAvailability",
               "Get-EC2ScheduledInstance",
               "Get-EC2SecurityGroupReference",
               "Get-EC2SecurityGroup",
               "Get-EC2SnapshotAttribute",
               "Get-EC2Snapshot",
               "Get-EC2SpotDatafeedSubscription",
               "Get-EC2SpotFleetInstance",
               "Get-EC2SpotFleetRequestHistory",
               "Get-EC2SpotFleetRequest",
               "Get-EC2SpotInstanceRequest",
               "Get-EC2SpotPriceHistory",
               "Get-EC2StaleSecurityGroup",
               "Get-EC2Subnet",
               "Get-EC2Tag",
               "Get-EC2TrafficMirrorFilter",
               "Get-EC2TrafficMirrorSession",
               "Get-EC2TrafficMirrorTarget",
               "Get-EC2TransitGatewayAttachment",
               "Get-EC2TransitGatewayMulticastDomain",
               "Get-EC2TransitGatewayPeeringAttachment",
               "Get-EC2TransitGatewayRouteTable",
               "Get-EC2TransitGateway",
               "Get-EC2TransitGatewayVpcAttachment",
               "Get-EC2VolumeAttribute",
               "Get-EC2Volume",
               "Get-EC2VolumeModification",
               "Get-EC2VolumeStatus",
               "Get-EC2VpcAttribute",
               "Get-EC2VpcClassicLink",
               "Get-EC2VpcClassicLinkDnsSupport",
               "Get-EC2EndpointConnectionNotification",
               "Get-EC2EndpointConnection",
               "Get-EC2VpcEndpoint",
               "Get-EC2EndpointServiceConfiguration",
               "Get-EC2EndpointServicePermission",
               "Get-EC2VpcEndpointService",
               "Get-EC2VpcPeeringConnection",
               "Get-EC2Vpc",
               "Get-EC2VpnConnection",
               "Get-EC2VpnGateway",
               "Dismount-EC2ClassicLinkVpc",
               "Dismount-EC2InternetGateway",
               "Dismount-EC2NetworkInterface",
               "Dismount-EC2Volume",
               "Dismount-EC2VpnGateway",
               "Disable-EC2EbsEncryptionByDefault",
               "Disable-EC2FastSnapshotRestore",
               "Disable-EC2TransitGatewayRouteTablePropagation",
               "Disable-EC2VgwRoutePropagation",
               "Disable-EC2VpcClassicLink",
               "Disable-EC2VpcClassicLinkDnsSupport",
               "Unregister-EC2Address",
               "Unregister-EC2ClientVpnTargetNetwork",
               "Unregister-EC2IamInstanceProfile",
               "Unregister-EC2RouteTable",
               "Unregister-EC2SubnetCidrBlock",
               "Unregister-EC2TransitGatewayMulticastDomain",
               "Unregister-EC2TransitGatewayRouteTable",
               "Unregister-EC2VpcCidrBlock",
               "Enable-EC2EbsEncryptionByDefault",
               "Enable-EC2FastSnapshotRestore",
               "Enable-EC2TransitGatewayRouteTablePropagation",
               "Enable-EC2VgwRoutePropagation",
               "Enable-EC2VolumeIO",
               "Enable-EC2VpcClassicLink",
               "Enable-EC2VpcClassicLinkDnsSupport",
               "Export-EC2ClientVpnClientCertificateRevocationList",
               "Export-EC2ClientVpnClientConfiguration",
               "Export-EC2Image",
               "Export-EC2TransitGatewayRoute",
               "Get-EC2AssociatedIpv6PoolCidr",
               "Get-EC2CapacityReservationUsage",
               "Get-EC2CoipPoolUsage",
               "Get-EC2ConsoleOutput",
               "Get-EC2ConsoleScreenshot",
               "Get-EC2DefaultCreditSpecification",
               "Get-EC2EbsDefaultKmsKeyId",
               "Get-EC2EbsEncryptionByDefault",
               "Get-EC2HostReservationPurchasePreview",
               "Get-EC2LaunchTemplateData",
               "Get-EC2ReservedInstancesExchangeQuote",
               "Get-EC2TransitGatewayAttachmentPropagation",
               "Get-EC2TransitGatewayMulticastDomainAssociation",
               "Get-EC2TransitGatewayRouteTableAssociation",
               "Get-EC2TransitGatewayRouteTablePropagation",
               "Import-EC2ClientVpnClientCertificateRevocationList",
               "Import-EC2Image",
               "Import-EC2KeyPair",
               "Import-EC2Snapshot",
               "Edit-EC2AvailabilityZoneGroup",
               "Edit-EC2CapacityReservation",
               "Edit-EC2ClientVpnEndpoint",
               "Edit-EC2DefaultCreditSpecification",
               "Edit-EC2EbsDefaultKmsKeyId",
               "Edit-EC2Fleet",
               "Edit-EC2FpgaImageAttribute",
               "Edit-EC2Host",
               "Edit-EC2IdentityIdFormat",
               "Edit-EC2IdFormat",
               "Edit-EC2ImageAttribute",
               "Edit-EC2InstanceAttribute",
               "Edit-EC2InstanceCapacityReservationAttribute",
               "Edit-EC2InstanceCreditSpecification",
               "Edit-EC2InstanceEventStartTime",
               "Edit-EC2InstanceMetadataOption",
               "Edit-EC2InstancePlacement",
               "Edit-EC2LaunchTemplate",
               "Edit-EC2NetworkInterfaceAttribute",
               "Edit-EC2ReservedInstance",
               "Edit-EC2SnapshotAttribute",
               "Edit-EC2SpotFleetRequest",
               "Edit-EC2SubnetAttribute",
               "Edit-EC2TrafficMirrorFilterNetworkService",
               "Edit-EC2TrafficMirrorFilterRule",
               "Edit-EC2TrafficMirrorSession",
               "Edit-EC2TransitGatewayVpcAttachment",
               "Edit-EC2Volume",
               "Edit-EC2VolumeAttribute",
               "Edit-EC2VpcAttribute",
               "Edit-EC2VpcEndpoint",
               "Edit-EC2VpcEndpointConnectionNotification",
               "Edit-EC2VpcEndpointServiceConfiguration",
               "Edit-EC2EndpointServicePermission",
               "Edit-EC2VpcPeeringConnectionOption",
               "Edit-EC2VpcTenancy",
               "Edit-EC2VpnConnection",
               "Edit-EC2VpnTunnelCertificate",
               "Edit-EC2VpnTunnelOption",
               "Start-EC2InstanceMonitoring",
               "Move-EC2AddressToVpc",
               "Register-EC2ByoipCidr",
               "New-EC2HostReservation",
               "New-EC2ReservedInstance",
               "New-EC2ScheduledInstancePurchase",
               "Restart-EC2Instance",
               "Register-EC2Image",
               "Register-EC2InstanceEventNotificationAttribute",
               "Register-EC2TransitGatewayMulticastGroupMember",
               "Register-EC2TransitGatewayMulticastGroupSource",
               "Deny-EC2TransitGatewayPeeringAttachment",
               "Deny-EC2TransitGatewayVpcAttachment",
               "Deny-EC2EndpointConnection",
               "Deny-EC2VpcPeeringConnection",
               "Remove-EC2Address",
               "Remove-EC2Host",
               "Set-EC2IamInstanceProfileAssociation",
               "Set-EC2NetworkAclAssociation",
               "Set-EC2NetworkAclEntry",
               "Set-EC2Route",
               "Set-EC2RouteTableAssociation",
               "Set-EC2TransitGatewayRoute",
               "Send-EC2InstanceStatus",
               "Request-EC2SpotFleet",
               "Request-EC2SpotInstance",
               "Reset-EC2EbsDefaultKmsKeyId",
               "Reset-EC2FpgaImageAttribute",
               "Reset-EC2ImageAttribute",
               "Reset-EC2InstanceAttribute",
               "Reset-EC2NetworkInterfaceAttribute",
               "Reset-EC2SnapshotAttribute",
               "Restore-EC2AddressToClassic",
               "Revoke-EC2ClientVpnIngress",
               "Revoke-EC2SecurityGroupEgress",
               "Revoke-EC2SecurityGroupIngress",
               "New-EC2Instance",
               "New-EC2ScheduledInstance",
               "Search-EC2LocalGatewayRoute",
               "Search-EC2TransitGatewayMulticastGroup",
               "Search-EC2TransitGatewayRoute",
               "Send-EC2DiagnosticInterrupt",
               "Start-EC2Instance",
               "Start-EC2VpcEndpointServicePrivateDnsVerification",
               "Stop-EC2Instance",
               "Stop-EC2ClientVpnConnection",
               "Remove-EC2Instance",
               "Unregister-EC2Ipv6AddressList",
               "Unregister-EC2PrivateIpAddress",
               "Stop-EC2InstanceMonitoring",
               "Update-EC2SecurityGroupRuleEgressDescription",
               "Update-EC2SecurityGroupRuleIngressDescription",
               "Stop-EC2ByoipCidrAdvertisement",
               "Get-EC2ImageByName",
               "Get-EC2InstanceMetadata",
               "Get-EC2PasswordData")
}

_awsArgumentCompleterRegistration $EC2_SelectCompleters $EC2_SelectMap


$AWS_EC2ImageByNameCompleter = {
	param ($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

	$keys = [Amazon.EC2.Util.ImageUtilities]::ImageKeys

	$keys |
	Sort-Object -Descending |
	Where-Object { $_ -like "$wordToComplete*" } |
	ForEach-Object {
		New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_
	}
}

_awsArgumentCompleterRegistration $AWS_EC2ImageByNameCompleter @{ "Name"=@("Get-EC2ImageByName") }

# The attribute name parameter for EC2 apis such as ModifyImageAttribute is modeled as a string
# in the service model rather than an enum type, which means by default we cannot auto-generate
# an argument completer. Api's use as DescribeImageAttribute do use an enum type (ImageAttributeName)
# and so don't have this problem.
$AWS_EC2ImageAttributeCompleter = {
	param ($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    switch ($("$commandName/$parameterName"))
    {
        # Taken from Amazon.EC2.ImageAttributeName
        "Edit-EC2ImageAttribute/Attribute"
        {
            $v = "description","kernel","ramdisk","launchPermission","productCodes","blockDeviceMapping","sriovNetSupport"
            break
        }
    }

    $v |
    Where-Object { $_ -like "$wordToComplete*" } |
    ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

_awsArgumentCompleterRegistration $AWS_EC2ImageAttributeCompleter @{ "Attribute"=@("Edit-EC2ImageAttribute") }
# SIG # Begin signature block
# MIIcUAYJKoZIhvcNAQcCoIIcQTCCHD0CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAPU4/iDPm6xo/Y
# ELz06XtFYpj7rja6T9YBiGOk00Lt/aCCF0cwggS5MIIDoaADAgECAhArd4OFAE9M
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
# DAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQg/X7SBxqsWcw033dQ1HbtgFkp
# BsG8mGPkHr/7Y9rJnZkwDQYJKoZIhvcNAQEBBQAEggEAWp1MJcpO0osjqPjc9/op
# spu79j/NrXRSAU2LuyJH0UBGARlb8VLQkIJx8KwOybEGyyMj/KOV7j8CYUPZstOE
# gT3dWVxyOXxgjr4a7MCIjyqsNet08VTJ6CzUC1uFHqIG/NH1pWmoClv8PEd3ibIe
# m12E7w3xxxwKxoYg6zZDlO92tsRZ/FNMpxzRfNv0eW8ARqfRnpTog0nhEXfjxnRp
# n74dT8tOrIG+US1sSXvm8bAStq5ka6KPhJ6QEb280wJQZ5VSm4LoYz6Yr9RxXCOB
# Jl8uj+xXs9KfjsWN53XncYisR2bex5f5q4P+fkAqeSMQPDsTHWTaw1FJZoPIgj1Q
# P6GCAg8wggILBgkqhkiG9w0BCQYxggH8MIIB+AIBATB2MGIxCzAJBgNVBAYTAlVT
# MRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5j
# b20xITAfBgNVBAMTGERpZ2lDZXJ0IEFzc3VyZWQgSUQgQ0EtMQIQAwGaAjr/WLFr
# 1tXq5hfwZjAJBgUrDgMCGgUAoF0wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAc
# BgkqhkiG9w0BCQUxDxcNMjAwNjEwMjMxNjU4WjAjBgkqhkiG9w0BCQQxFgQUBTu9
# FUj78zkf4zINWYcx0p/51EEwDQYJKoZIhvcNAQEBBQAEggEAQAiofhfWCE9kMWkq
# rIi8d14qbGKb0Mq/oBM95Fh0+6/1uyPSNk3MpgfHwQrifmqRlKv98sPI2UIpGTNy
# TiE3+YO8F70mzf0f5I6dnIsk2w21z0Y3+bcZ5qFlk56+dsw+TiZlfTgfmkMXrTBX
# ON01eceHGootrdAPZNUOkKYlxebrCTm3mcbYty5v5GCcmKN0Kq4BEl5kqAxfhe0x
# 5U2fuVMvk7iNrOWuJ0B7kO1K0zLQ7PgX2V+C/SV22jd4QsYkawjI64rk0IDuLl+m
# hel0CzYRGCG9cdYiwl1TeiTEQrGnXti2PVhOCVtMWIvg0pBxlbXrEeonJEIYJ9Pv
# U5g6TQ==
# SIG # End signature block
