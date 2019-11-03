---
external help file: Rubrik-help.xml
Module Name: Rubrik
online version: 'http://rubrikinc.github.io/rubrik-sdk-for-powershell/'
schema: 2.0.0
---

# Get-RubrikManagedVolumeExport

## SYNOPSIS

Gets data on a Rubrik managed volume

## SYNTAX

```text
Get-RubrikManagedVolumeExport [[-id] <String>] [[-SourceManagedVolumeID] <String>]
 [[-SourceManagedVolumeName] <String>] [[-PrimaryClusterID] <String>] [[-Server] <String>] [[-api] <String>]
 [<CommonParameters>]
```

## DESCRIPTION

The Get-RubrikManagedVolumeExport cmdlet is used to retrive information on one or more managed volume exports.

## EXAMPLES

### EXAMPLE 1

```text
Get-RubrikManagedVolumeExport
```

Return all managed volume exports \(live mounts\).

### EXAMPLE 2

```text
Get-RubrikManagedVolumeExport -SourceManagedVolumeName 'foo'
```

Return all managed volume exports \(live mounts\) for the 'foo' managed volume.

## PARAMETERS

### -id

id of managed volume

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SourceManagedVolumeID

ID of the source managed volume

```yaml
Type: String
Parameter Sets: (All)
Aliases: $source_managed_volume_id

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceManagedVolumeName

Name of the source managed volume

```yaml
Type: String
Parameter Sets: (All)
Aliases: $source_managed_volume_name

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrimaryClusterID

Filter the summary information based on the primarycluster\_id of the primary Rubrik cluster. Use **\_local** as the primary\_cluster\_id of the Rubrik cluster that is hosting the current REST API session.

```yaml
Type: String
Parameter Sets: (All)
Aliases: primary_cluster_id

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Server

Rubrik server IP or FQDN

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: $global:RubrikConnection.server
Accept pipeline input: False
Accept wildcard characters: False
```

### -api

API version

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: $global:RubrikConnection.api
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about\_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

Written by Mike Fal Twitter: @Mike\_Fal GitHub: MikeFal

## RELATED LINKS

[http://rubrikinc.github.io/rubrik-sdk-for-powershell/](http://rubrikinc.github.io/rubrik-sdk-for-powershell/)

