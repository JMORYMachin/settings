
# .EXAMPLE 
# $true | _? { gci c:\dev } -i {gci c:\ }
function Invoke-Conditional {
    param(  [parameter(Mandatory = $true)]
            [ValidateNotNullOrEmpty()]
            [ScriptBlock] $runIfTrue, 
            [parameter(Mandatory = $true)]
    	    [ValidateNotNullOrEmpty()]
            [ScriptBlock] $i) 
    
    if($($input)) {
        . $runIfTrue
    }
    else {
        . $i
    }
}            

Set-Alias -Name _? -Value Invoke-Conditional
