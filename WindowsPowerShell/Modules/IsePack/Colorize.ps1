function Copy-Colored
{
    <#
    .Synopsis
        Copies the currently selected text in the current file with colorization
    .Description
        Copies the currently selected text in the current file with colorization.
        This allows for a user to paste colorized scripts into Word or Outlook
    .Example
        Copy-Colored 
    #>
    param()
    
    if (-not $psise.CurrentFile)
    {
        Write-Error 'You must have an open script file'
        return
    }
    
    function Colorize
    {
        # colorize a script file or function

        param([string]$Text, [int]$Start = -1, [int]$End = -1)
        trap { break }
        $rtb = New-Object Windows.Forms.RichTextBox    
        $rtb.Font = New-Object Drawing.Font $psise.Options.FontName, 
            $psise.Options.FontSize
        $rtb.Text = $Text

        # Now parse the text and report any errors...
        $parse_errs = $null
        $tokens = [system.management.automation.psparser]::Tokenize($rtb.Text,
            [ref] $parse_errs)

        if ($parse_errs) {
            $parse_errs
            return
        }

        # iterate over the tokens an set the colors appropriately...
        foreach ($t in $tokens) {
            $rtb.Select($t.start, $t.length)
            $color = $psise.Options.TokenColors[$t.Type]
            if ($color) {
                $rtb.selectioncolor = [drawing.color]::FromArgb($color.A, 
                    $color.R, 
                    $color.G, 
                    $color.B)
            }
        }
        if ($start -eq -1 -and $end -eq -1) {
            $rtb.select(0,$rtb.Text.Length)
        } else {
            $rtb.select($start, $end)
        }
        $rtb.Copy()
    }
    
    
    $selectedRunspace = $psise.CurrentFile
    $selectedEditor=$selectedRunspace.Editor

    $FullText = $selectedEditor.Text -replace '\r\n', "`n"
    if (-not $selectedEditor.SelectedText)
    {
        $TextToColor = ($selectedEditor.Text -replace '\r\n', "`n")
    }
    else
    {
        $TextToColor = ($selectedEditor.SelectedText -replace '\r\n', "`n")
    }
    Colorize $FullText $FullText.IndexOf(($TextToColor -replace '\r\n', "`n")) $TextToColor.Length
}

function Write-ColorizedHTML {
    <#
    .Synopsis
        Writes Windows PowerShell as colorized HTML
    .Description
        Outputs a Windows PowerShell script as colorized HTML.
        The script is wrapped in <PRE> tags with <SPAN> tags defining color regions.
    .Example
        Write-ColoredHTML {Get-Process}
    #>
    param(
        # The Text to colorize
        [Parameter(Mandatory=$true)]
        [String]$Text,
        # The starting within the string to colorize
        [Int]$Start = -1,
        # the end within the string to colorize
        [Int]$End = -1)
    
    trap { break } 
    #
    # Now parse the text and report any errors...
    #
    $parse_errs = $null
    $tokens = [Management.Automation.PsParser]::Tokenize($text,
        [ref] $parse_errs)
 
    if ($parse_errs) {
        $parse_errs
        return
    }
    $stringBuilder = New-Object Text.StringBuilder
    $null = $stringBuilder.Append("<pre class='PowerShellColorizedScript' style='background-color:#000000;font-size:13px;font-family:Consolas;'>")
    # iterate over the tokens an set the colors appropriately...
    $lastToken = $null
    foreach ($t in $tokens)
    {
        if ($lastToken) {
            $spaces = " " * ($t.Start - ($lastToken.Start + $lastToken.Length))
            $null = $stringBuilder.Append($spaces)
        }
        if ($t.Type -eq "NewLine") {
            $null = $stringBuilder.Append("            
")
        } else {
            $chunk = $text.SubString($t.start, $t.length)
            $color = $psise.Options.TokenColors[$t.Type]            
            $redChunk = "{0:x2}" -f $color.R
            $greenChunk = "{0:x2}" -f $color.G
            $blueChunk = "{0:x2}" -f $color.B
            $colorChunk = "#$redChunk$greenChunk$blueChunk"
            $null = $stringBuilder.Append("<span style='color:$colorChunk'>$chunk</span>")                    
        }                       
        $lastToken = $t
    }
    $null = $stringBuilder.Append("</pre>")
    $stringBuilder.ToString()
}    

function Copy-ColoredHTML 
{
    <#
    .Synopsis
        Copies the currently selected text in the current file as colorized HTML
    .Description
        Copies the currently selected text in the current file as colorized HTML
        This allows for a user to paste colorized scripts into web pages or blogging 
        software
    .Example
        Copy-ColoredHTML
    #>
    param()
    if (-not $psise.CurrentFile)
    {
        Write-Error 'You must have an open script file'
        return
    }
    
    $selectedRunspace = $psise.CurrentFile
    $selectedEditor=$selectedRunspace.Editor

    $FullText = $selectedEditor.Text -replace '\r\n', "`n"
    if (-not $selectedEditor.SelectedText)
    {
        $colorizedText = Write-ColorizedHTML $selectedEditor.Text
    }
    else
    {
        $colorizedText = Write-ColorizedHTML $selectedEditor.SelectedText
    }
    [Windows.Clipboard]::SetText($colorizedText)
}


