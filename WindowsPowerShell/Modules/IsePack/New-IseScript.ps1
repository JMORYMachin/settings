function New-IseScript {
    <#
    .Synopsis
        Creates a new script file in the ISE
    .Description
        Creates a new script file in the Windows PowerShell Integrated 
        Scripting Environment.
    .Example
        New-IseScript
    #>
    [CmdletBinding(DefaultParameterSetName='None')]
    param(
    # The script block to place into the new file
    [Parameter(ValueFromPipeline=$true,
        ParameterSetName='ScriptBlock',
        Mandatory=$true)]
    [ScriptBlock]
    $ScriptBlock,
    
    # The ExternalScriptInfo that should be converted into a new file
    # ExternalScriptInfo is the output from Get-Command targeted at a 
    # .PS1 file.
    # If this parameter is used, the external script will be converted 
    # into a function.
    [Parameter(ValueFromPipeline=$true,
        ParameterSetName='ExternalScriptInfo',
        Mandatory=$true)]
    [Management.Automation.ExternalScriptInfo]
    $ExternalScriptInfo   
    )
    
    process {
        switch ($psCmdlet.ParameterSetName)
        {
            ScriptBlock {
                $file = $psise.CurrentPowerShellTab.Files.Add() 
                $file.Editor.Text = $scriptBlock
                $file          
            } 
            ExternalScriptInfo { 
                $file = $psise.CurrentPowerShellTab.Files.Add()
                $sb = New-Object Text.StringBuilder
                $functionName = $externalScriptInfo.Name.Substring(0, 
                    $externalScriptInfo.Name.LastIndexOf("."))
                $null = $sb.Append("function $functionName {
")
                foreach ($line in $externalScriptInfo.ScriptContents.Split([Environment]::NewLine)) {
                    if (-not $line) { continue } 
                    $null = $sb.Append("    $line
")
                }
                $null = $sb.Append("}")
                $file.Editor.Text = $sb.ToString() 
            }
            None {
                $psise.CurrentPowerShellTab.Files.Add()
            }                
        }
    }    
}