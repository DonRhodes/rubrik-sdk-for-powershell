---
external help file: Rubrik-help.xml
Module Name: Rubrik
online version: https://rubrik.gitbook.io/rubrik-sdk-for-powershell/command-documentation/reference/get-rubrikvolumegroupmount
schema: 2.0.0
---

# Get-RubrikVolumeGroupMount

## SYNOPSIS
Connects to Rubrik and retrieves details on mounts of volume groups

## SYNTAX

```
Get-RubrikVolumeGroupMount [[-id] <String>] [[-source_host] <String>] [[-Server] <String>] [[-api] <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The Get-RubrikVolumeGroupMount cmdlet will accept a volume group id or the name of the source_host.
It returns details on any mount operations that are active within Rubrik.

## EXAMPLES

### EXAMPLE 1
```
Get-RubrikVolumeGroupMount
```

This will return details on all mounted volume groups.

### EXAMPLE 2
```
Get-RubrikVolumeGroupMount -id '11111111-2222-3333-4444-555555555555'
```

This will return details on mount id "11111111-2222-3333-4444-555555555555".

### EXAMPLE 3
```
Get-RubrikVolumeGroupMount -source_host win-server01
```

This will return details for any mounts found where the source host is win-server01

### EXAMPLE 4
```
Get-RubrikVolumeGroupMount | Where-Object {$_.targetHostName -eq 'recover-01'}
```

This will return details for any mounts found that are mounted on the server recover-01

## PARAMETERS

### -id
Rubrik's id of the mount

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

### -source_host
Filters live mounts by VM ID

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
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
Position: 3
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
Position: 4
Default value: $global:RubrikConnection.api
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
Written by Pierre Flammer for community usage
Twitter: @PierreFlammer

## RELATED LINKS

[https://rubrik.gitbook.io/rubrik-sdk-for-powershell/command-documentation/reference/get-rubrikvolumegroupmount](https://rubrik.gitbook.io/rubrik-sdk-for-powershell/command-documentation/reference/get-rubrikvolumegroupmount)

