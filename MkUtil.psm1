<#
.Synopsis
   Short description
.DESCRIPTION
   Long description
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
#>
function Get-WebStatus
{
    [CmdletBinding()]
    [Alias()]
    [OutputType([string])]
    Param
    (
        # Param1 help description
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true
                   )]
        $WebSiteName       
    )

   
    Process
    {
    $Response = Invoke-WebRequest -Uri $WebSiteName -UseBasicParsing

    if($Response.StatusCode -eq 200)
    {
        return "SUCCESS";
    }
    else
    {
        return "FAILURE";
    }    
 

    }
   
}