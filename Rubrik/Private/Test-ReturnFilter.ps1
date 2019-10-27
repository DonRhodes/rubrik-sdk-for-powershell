﻿function Test-ReturnFilter($object, $location, $result) {
  <#
    .SYNOPSIS
    Used to test and filter response content

    .DESCRIPTION
    The Test-ReturnFilter function is used to perform a search across response content for a particular value

    .PARAMETER object
    The parent function's variable holding the user generated query data
    
    .PARAMETER location
    The key/value pair that contains the name of the key holding the data to filter through

    .PARAMETER result
    The unfiltered API response content  
  #>

  # For when a location is one layer deep
  if ($object -and $location.split('.').count -eq 1) {
    # The $object check assumes that not all filters will be used in each call
    # If it does exist, the results are filtered using the $object's value against the $location's key name
    # Example: Filtering an SLA Domain Name based on the "effectiveSlaDomainName" key/value pair
    return $result | Where-Object -FilterScript {
      $_.$location -eq $object
    }
  }
  # For when a location is two layers deep
  elseif ($object -and $location.split('.').count -eq 2) {
    # The $object check assumes that not all filters will be used in each call
    # If it does exist, the results are filtered using the $object's value against the $location's key name
    # Example: Filtering an SLA Domain Name based on the "effectiveSlaDomainName" key/value pair
    return $result | Where-Object -FilterScript {
      $_.($location.split('.')[0]).($location.split('.')[-1]) -eq $object
    }
  }
  else {
    # When no $location is found, return the original $result
    return $result
  }
}
