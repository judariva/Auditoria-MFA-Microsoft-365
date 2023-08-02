<#
.SYNOPSIS
This script checks the MFA (Multi-Factor Authentication) status for users and exports a report to the current directory.
.DESCRIPTION
The script retrieves a list of all users, checks their MFA status, and exports a detailed report as a CSV file.
.PARAMETER ExportPath
The path where the exported CSV report should be stored.
.NOTES
Script Name: MFA_Status_Report.ps1
Author: Juan David Rivera
#>

# Import user list
$users = Get-MsolUser -All

# Initialize the result array
$results = @()

# For each user retrieved from MSOL, check their MFA status
foreach ($user in $users) {

    # Print user checking status
    Write-Host "Checking $($user.UserPrincipalName) For strong authentication" -ForegroundColor Green

    # If user has MFA enabled (has strong authentication methods)
    if($user.StrongAuthenticationMethods) {

        Write-Host "Authentication Method found for $($user.UserPrincipalName)" -ForegroundColor Yellow

        # Create a hash table to hold user properties
        $props = @{
            DisplayName = $user.DisplayName
            UPN = $user.UserPrincipalName
            PhoneNumber = $user.StrongAuthenticationUserDetails.PhoneNumber
            "MFA Enabled" = "True"
            DefaultMethod = $user.StrongAuthenticationMethods | Where-Object {$_.IsDefault -eq "True"} | Select-Object MethodType -ExpandProperty MethodType
            Licensed  = $user.IsLicensed
            AssignedLicence = if($user.Licenses.AccountSkuId){$user.Licenses.AccountSkuId -join ","} else {"No Licence Assigned"}
            UserType = $user.UserType  # Added user type to distinguish between 'Member' and 'Guest'
        }

        # Create result object with user properties and add it to the result array
        $results += New-Object PSObject -Property $props
    }
    else {

        Write-Host "No Authentication Method found on $($user.UserPrincipalName)" -ForegroundColor red

        # Create a hash table to hold user properties
        $props = @{
            DisplayName = $user.DisplayName
            UPN = $user.UserPrincipalName
            PhoneNumber = "N/A"
            "MFA Enabled" = "False"
            DefaultMethod = "N/A"
            Licensed  = $user.IsLicensed
            AssignedLicence = if($user.Licenses.AccountSkuId){$user.Licenses.AccountSkuId -join ","} else {"No Licence Assigned"}
            UserType = $user.UserType  # Added user type to distinguish between 'Member' and 'Guest'
        }

        # Create result object with user properties and add it to the result array
        $results += New-Object PSObject -Property $props
    }
}

# Export the result array to a CSV file
$results | Select-Object DisplayName,UPN,PhoneNumber,"MFA Enabled",DefaultMethod,Licensed,AssignedLicence,UserType | 
    Export-Csv -Path .\MFA_User_Report.csv -NoTypeInformation
