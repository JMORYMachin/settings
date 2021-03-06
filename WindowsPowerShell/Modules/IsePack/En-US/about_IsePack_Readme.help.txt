
NAME
    Push-CurrentFileLocation
    
SYNOPSIS
    Runs Push-Location into the location of the current file
    
    
SYNTAX
    Push-CurrentFileLocation [<CommonParameters>]
    
    
DESCRIPTION
    Runs Push-Location into the location of the current file
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Push-CurrentFileLocation -examples".
    For more information, type: "get-help Push-CurrentFileLocation -detailed".
    For technical information, type: "get-help Push-CurrentFileLocation -full".

NAME
    Select-CurrentTextAsVariable
    
SYNOPSIS
    Attempts to select the current text as a type
    
    
SYNTAX
    Select-CurrentTextAsVariable [<CommonParameters>]
    
    
DESCRIPTION
    Attempts to select the current text as a type.
    Will not display errors for selections that could not be coerced into a 
    type.
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Select-CurrentTextAsVariable -examples".
    For more information, type: "get-help Select-CurrentTextAsVariable -detailed".
    For technical information, type: "get-help Select-CurrentTextAsVariable -full".

NAME
    ConvertTo-ShortcutKeyTable
    
SYNOPSIS
    Converts a hierarchical menu into a table of shortcuts
    
    
SYNTAX
    ConvertTo-ShortcutKeyTable [[-hashtable] <Hashtable>] [<CommonParameters>]
    
    
DESCRIPTION
    Converts a menu specified as a hashtable (for use with Add-IseMenu) to
    a flat list of objects
    

RELATED LINKS
    Add-IseMenu 

REMARKS
    To see the examples, type: "get-help ConvertTo-ShortcutKeyTable -examples".
    For more information, type: "get-help ConvertTo-ShortcutKeyTable -detailed".
    For technical information, type: "get-help ConvertTo-ShortcutKeyTable -full".

NAME
    Select-AllInFile
    
SYNOPSIS
    Selects all of the text within a given file in the ISE
    
    
SYNTAX
    Select-AllInFile [-File] <ISEFile> [<CommonParameters>]
    
    
DESCRIPTION
    Selects all of the text within a given file in the Windows PowerShell
    Integrated Scripting Environment
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Select-AllInFile -examples".
    For more information, type: "get-help Select-AllInFile -detailed".
    For technical information, type: "get-help Select-AllInFile -full".

NAME
    Get-CurrentOpenedFileToken
    
SYNOPSIS
    Gets the PowerShell Parser Tokens for the current file
    
    
SYNTAX
    Get-CurrentOpenedFileToken [<CommonParameters>]
    
    
DESCRIPTION
    Converts the current file into a list of powershell tokens
    Scripters can use these tokens to figure out exact context within a script
    

RELATED LINKS
    Get-TokenFromFile 

REMARKS
    To see the examples, type: "get-help Get-CurrentOpenedFileToken -examples".
    For more information, type: "get-help Get-CurrentOpenedFileToken -detailed".
    For technical information, type: "get-help Get-CurrentOpenedFileToken -full".

NAME
    Export-FormatView
    
SYNOPSIS
    Exports a View Definition for a particular type
    
    
SYNTAX
    Export-FormatView [-Type] <Type> [-Property] <String[]> [[-Label] <String[]>] [[-Width] <Int32[]>] [<CommonParameters>]
    
    
DESCRIPTION
    Creates a ViewDefinition element to show only a few properties of any type
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Export-FormatView -examples".
    For more information, type: "get-help Export-FormatView -detailed".
    For technical information, type: "get-help Export-FormatView -full".

NAME
    Add-IseMenu
    
SYNOPSIS
    Helper function to add menus to the ISE
    
    
SYNTAX
    Add-IseMenu [-Name] <String> [-Menu] <Hashtable> [[-Root] <Object>] [-PassThru] [-Merge] [<CommonParameters>]
    
    
DESCRIPTION
    Makes adding menus to the Windows PowerShell Integrated Scripting Environment (ISE)
    easier.  Add-IseMenu accepts a hashtable of menus.  
    Each key is the name of the menu.
        Keys are automatically alphabetized, unless the 
    Each value can be one of three things:
        - A Script Block
            Selecting the menu item will run the script block
        - A Hashtable
            The value will be used to create a nested menu
        - A Script Block with a note property of ShortcutKey
            Selecting the menu item will run the script block.
            The ShortcutKey will be used to assign a shortcut key to the item
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Add-IseMenu -examples".
    For more information, type: "get-help Add-IseMenu -detailed".
    For technical information, type: "get-help Add-IseMenu -full".

NAME
    Add-InlineHelp
    
SYNOPSIS
    Adds a template for inline help into the current file.
    
    
SYNTAX
    Add-InlineHelp [<CommonParameters>]
    
    
DESCRIPTION
    Adds a template for inline help into the current file in 
    the Integrated Scripting Environment
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Add-InlineHelp -examples".
    For more information, type: "get-help Add-InlineHelp -detailed".
    For technical information, type: "get-help Add-InlineHelp -full".

NAME
    Show-HelpForCurrentSelection
    
SYNOPSIS
    Shows help for the currently selected text
    
    
SYNTAX
    Show-HelpForCurrentSelection [<CommonParameters>]
    
    
DESCRIPTION
    Shows helps for the currently selected text
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Show-HelpForCurrentSelection -examples".
    For more information, type: "get-help Show-HelpForCurrentSelection -detailed".
    For technical information, type: "get-help Show-HelpForCurrentSelection -full".

NAME
    Copy-Colored
    
SYNOPSIS
    Copies the currently selected text in the current file with colorization
    
    
SYNTAX
    Copy-Colored [<CommonParameters>]
    
    
DESCRIPTION
    Copies the currently selected text in the current file with colorization.
    This allows for a user to paste colorized scripts into Word or Outlook
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Copy-Colored -examples".
    For more information, type: "get-help Copy-Colored -detailed".
    For technical information, type: "get-help Copy-Colored -full".

NAME
    Move-ToNextGroup
    
SYNOPSIS
    Moves to the next grouping token ({}) in the current script
    
    
SYNTAX
    Move-ToNextGroup [<CommonParameters>]
    
    
DESCRIPTION
    Moves to the next grouping token ({}) in the current script
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Move-ToNextGroup -examples".
    For more information, type: "get-help Move-ToNextGroup -detailed".
    For technical information, type: "get-help Move-ToNextGroup -full".

NAME
    Show-TypeConstructorForCurrentType
    
SYNOPSIS
    Shows type constructors for the currently selected type
    
    
SYNTAX
    Show-TypeConstructorForCurrentType [<CommonParameters>]
    
    
DESCRIPTION
    Attempts to convert the selected text to a type and dislay the constructors
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Show-TypeConstructorForCurrentType -examples".
    For more information, type: "get-help Show-TypeConstructorForCurrentType -detailed".
    For technical information, type: "get-help Show-TypeConstructorForCurrentType -full".

NAME
    Show-TypeConstructor
    
SYNOPSIS
    Shows the constructors for a given type
    
    
SYNTAX
    Show-TypeConstructor [[-type] <Type>] [<CommonParameters>]
    
    
DESCRIPTION
    Calls the toString method on each constructor on a given type, 
    which gives a (moderately) human readable output of how to create
    the type
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Show-TypeConstructor -examples".
    For more information, type: "get-help Show-TypeConstructor -detailed".
    For technical information, type: "get-help Show-TypeConstructor -full".

NAME
    Select-CurrentTextAsCommand
    
SYNOPSIS
    Attempts to select the current text as a command
    
    
SYNTAX
    Select-CurrentTextAsCommand [<CommonParameters>]
    
    
DESCRIPTION
    Attempts to select the current text as a command.
    Will not display any errors if the current text could not 
    be selected as a command
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Select-CurrentTextAsCommand -examples".
    For more information, type: "get-help Select-CurrentTextAsCommand -detailed".
    For technical information, type: "get-help Select-CurrentTextAsCommand -full".

NAME
    Add-ForeachStatement
    
SYNOPSIS
    Adds a Foreach Statement to the ISE
    
    
SYNTAX
    Add-ForeachStatement [<CommonParameters>]
    
    
DESCRIPTION
    Adds a Foreach Statement to the ISE
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Add-ForeachStatement -examples".
    For more information, type: "get-help Add-ForeachStatement -detailed".
    For technical information, type: "get-help Add-ForeachStatement -full".

NAME
    Switch-SelectedCommentOrText
    
SYNOPSIS
    Toggles Comments on the selected text
    
    
SYNTAX
    Switch-SelectedCommentOrText [<CommonParameters>]
    
    
DESCRIPTION
    Toggles comments on the currently selected text.
    Comment lines will be uncommented and uncommented lines will be commented
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Switch-SelectedCommentOrText -examples".
    For more information, type: "get-help Switch-SelectedCommentOrText -detailed".
    For technical information, type: "get-help Switch-SelectedCommentOrText -full".

NAME
    Move-ToLastGroup
    
SYNOPSIS
    Moves to the next grouping token ({}) in the current script
    
    
SYNTAX
    Move-ToLastGroup [<CommonParameters>]
    
    
DESCRIPTION
    Moves to the next grouping token ({}) in the current script
    

RELATED LINKS
    Get-CurrentOpenedFileToken 

REMARKS
    To see the examples, type: "get-help Move-ToLastGroup -examples".
    For more information, type: "get-help Move-ToLastGroup -detailed".
    For technical information, type: "get-help Move-ToLastGroup -full".

NAME
    Get-CurrentToken
    
SYNOPSIS
    Gets the current token within a file
    
    
SYNTAX
    Get-CurrentToken [[-tokens] <Object>] [[-line] <Object>] [[-column] <Object>] [<CommonParameters>]
    
    
DESCRIPTION
    Gets the current token within a file
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Get-CurrentToken -examples".
    For more information, type: "get-help Get-CurrentToken -detailed".
    For technical information, type: "get-help Get-CurrentToken -full".

NAME
    Copy-ColoredHTML
    
SYNOPSIS
    Copies the currently selected text in the current file as colorized HTML
    
    
SYNTAX
    Copy-ColoredHTML [<CommonParameters>]
    
    
DESCRIPTION
    Copies the currently selected text in the current file as colorized HTML
    This allows for a user to paste colorized scripts into web pages or blogging 
    software
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Copy-ColoredHTML -examples".
    For more information, type: "get-help Copy-ColoredHTML -detailed".
    For technical information, type: "get-help Copy-ColoredHTML -full".

NAME
    Close-AllOpenedFiles
    
SYNOPSIS
    Automatically closes all saved open files
    
    
SYNTAX
    Close-AllOpenedFiles [<CommonParameters>]
    
    
DESCRIPTION
    Checks each file in the current tab to see if it is saved.
    If the file is saved, then the file will be closed.
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Close-AllOpenedFiles -examples".
    For more information, type: "get-help Close-AllOpenedFiles -detailed".
    For technical information, type: "get-help Close-AllOpenedFiles -full".

NAME
    Switch-CommentOrText
    
SYNOPSIS
    Switches between commented and uncommented text
    
    
SYNTAX
    Switch-CommentOrText [-text] <String> [<CommonParameters>]
    
    
DESCRIPTION
    Takes a block of text.  Uncomments lines that are commented out and 
    comments lines that are not already commented out.
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Switch-CommentOrText -examples".
    For more information, type: "get-help Switch-CommentOrText -detailed".
    For technical information, type: "get-help Switch-CommentOrText -full".

NAME
    Move-ToNextPowerShellTab
    
SYNOPSIS
    Moves to the next PowerShell Tab
    
    
SYNTAX
    Move-ToNextPowerShellTab [<CommonParameters>]
    
    
DESCRIPTION
    Moves to the next PowerShell Tab
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Move-ToNextPowerShellTab -examples".
    For more information, type: "get-help Move-ToNextPowerShellTab -detailed".
    For technical information, type: "get-help Move-ToNextPowerShellTab -full".

NAME
    Add-SwitchStatement
    
SYNOPSIS
    Adds a Switch Statement to the current file
    
    
SYNTAX
    Add-SwitchStatement [<CommonParameters>]
    
    
DESCRIPTION
    Adds a Switch statement to the current file within the integrated scripting environment
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Add-SwitchStatement -examples".
    For more information, type: "get-help Add-SwitchStatement -detailed".
    For technical information, type: "get-help Add-SwitchStatement -full".

NAME
    Add-PInvoke
    
SYNOPSIS
    Creates C# code to access a C function
    
    
SYNTAX
    Add-PInvoke [-Library] <String> [-Signature] <String> [-OutputText] [<CommonParameters>]
    
    
DESCRIPTION
    Creates C# code to access a C function
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Add-PInvoke -examples".
    For more information, type: "get-help Add-PInvoke -detailed".
    For technical information, type: "get-help Add-PInvoke -full".

NAME
    Save-IseFileWithAutoName
    
SYNOPSIS
    Saves a file within the Integrated Scripting Enviroment with an automatically generated name
    
    
SYNTAX
    Save-IseFileWithAutoName [[-File] <ISEFile>] [<CommonParameters>]
    
    
DESCRIPTION
    Saves a file within the Integrated Scripting Enviroment with an automatically generated name.
    The Name of the file will be the first function found .ps1
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Save-IseFileWithAutoName -examples".
    For more information, type: "get-help Save-IseFileWithAutoName -detailed".
    For technical information, type: "get-help Save-IseFileWithAutoName -full".

NAME
    Show-SyntaxForCurrentCommand
    
SYNOPSIS
    Shows syntax for the currenly selected function or cmdlet
    
    
SYNTAX
    Show-SyntaxForCurrentCommand [<CommonParameters>]
    
    
DESCRIPTION
    Attempts to convert the selected text to a command and displays the 
    command syntax if the conversion is successful
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Show-SyntaxForCurrentCommand -examples".
    For more information, type: "get-help Show-SyntaxForCurrentCommand -detailed".
    For technical information, type: "get-help Show-SyntaxForCurrentCommand -full".

NAME
    Select-CurrentText
    
SYNOPSIS
    Returns the currently selected text
    
    
SYNTAX
    Select-CurrentText [<CommonParameters>]
    
    
DESCRIPTION
    Returns the text that is currently selected from within the editor, 
    the output, and the command pane
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Select-CurrentText -examples".
    For more information, type: "get-help Select-CurrentText -detailed".
    For technical information, type: "get-help Select-CurrentText -full".

NAME
    New-IseScript
    
SYNOPSIS
    Creates a new script file in the ISE
    
    
SYNTAX
    New-IseScript [<CommonParameters>]
    
    New-IseScript -ScriptBlock <ScriptBlock> [<CommonParameters>]
    
    New-IseScript -ExternalScriptInfo <ExternalScriptInfo> [<CommonParameters>]
    
    
DESCRIPTION
    Creates a new script file in the Windows PowerShell Integrated 
    Scripting Environment.
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help New-IseScript -examples".
    For more information, type: "get-help New-IseScript -detailed".
    For technical information, type: "get-help New-IseScript -full".

NAME
    Invoke-Line
    
SYNOPSIS
    Invokes the current line in the ISE
    
    
SYNTAX
    Invoke-Line [<CommonParameters>]
    
    
DESCRIPTION
    Invokes the curreent line in the Windows PowerShell Integrated Scripting Environment
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Invoke-Line -examples".
    For more information, type: "get-help Invoke-Line -detailed".
    For technical information, type: "get-help Invoke-Line -full".

NAME
    Add-Parameter
    
SYNOPSIS
    Adds a Parameter attribute to the current file in the ISE
    
    
SYNTAX
    Add-Parameter [[-ParameterSet] <String>] [[-HelpMessage] <String>] [<CommonParameters>]
    
    
DESCRIPTION
    Adds a Parameter attribute to the current file in the ISE
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Add-Parameter -examples".
    For more information, type: "get-help Add-Parameter -detailed".
    For technical information, type: "get-help Add-Parameter -full".

NAME
    Add-IfStatement
    
SYNOPSIS
    Adds an if Statement to the ISE
    
    
SYNTAX
    Add-IfStatement [<CommonParameters>]
    
    
DESCRIPTION
    Adds an if Statement to the ISE
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Add-IfStatement -examples".
    For more information, type: "get-help Add-IfStatement -detailed".
    For technical information, type: "get-help Add-IfStatement -full".

NAME
    New-ScriptModuleFromCurrentLocation
    
SYNOPSIS
    Creates a new basic script module (.PSM1) from location of the current file
    
    
SYNTAX
    New-ScriptModuleFromCurrentLocation [<CommonParameters>]
    
    
DESCRIPTION
    Creates a new basic script module (.PSM1) from location of the current file
    All .ps1 files in the same directory as the current file will be included in 
    the module.
    
    Does not overwrite existing modules at this location.
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help New-ScriptModuleFromCurrentLocation -examples".
    For more information, type: "get-help New-ScriptModuleFromCurrentLocation -detailed".
    For technical information, type: "get-help New-ScriptModuleFromCurrentLocation -full".

NAME
    Select-CurrentTextAsType
    
SYNOPSIS
    Attempts to select the current text as a type
    
    
SYNTAX
    Select-CurrentTextAsType [<CommonParameters>]
    
    
DESCRIPTION
    Attempts to select the current text as a type.
    Will not display errors for selections that could not be coerced into a 
    type
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Select-CurrentTextAsType -examples".
    For more information, type: "get-help Select-CurrentTextAsType -detailed".
    For technical information, type: "get-help Select-CurrentTextAsType -full".

NAME
    Write-ColorizedHTML
    
SYNOPSIS
    Writes Windows PowerShell as colorized HTML
    
    
SYNTAX
    Write-ColorizedHTML [-Text] <String> [[-Start] <Int32>] [[-End] <Int32>] [<CommonParameters>]
    
    
DESCRIPTION
    Outputs a Windows PowerShell script as colorized HTML.
    The script is wrapped in <PRE> tags with <SPAN> tags defining color regions.
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Write-ColorizedHTML -examples".
    For more information, type: "get-help Write-ColorizedHTML -detailed".
    For technical information, type: "get-help Write-ColorizedHTML -full".

NAME
    Get-TokenFromFile
    
SYNOPSIS
    Gets the Tokens from a file in the Integrated Scripting Environment
    
    
SYNTAX
    Get-TokenFromFile [-file] <ISEFile> [<CommonParameters>]
    
    
DESCRIPTION
    Gets the Tokens from a file in the Integrated Scripting Environment
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Get-TokenFromFile -examples".
    For more information, type: "get-help Get-TokenFromFile -detailed".
    For technical information, type: "get-help Get-TokenFromFile -full".

NAME
    Split-IseFile
    
SYNOPSIS
    Splits up a large file containing many functions into many files with one function each
    
    
SYNTAX
    Split-IseFile [[-File] <ISEFile>] [-Save] [<CommonParameters>]
    
    
DESCRIPTION
    Splits up a large file containing many functions into many files with one function each
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Split-IseFile -examples".
    For more information, type: "get-help Split-IseFile -detailed".
    For technical information, type: "get-help Split-IseFile -full".

NAME
    Move-ToLastPowerShellTab
    
SYNOPSIS
    Moves to the last PowerShell Tab
    
    
SYNTAX
    Move-ToLastPowerShellTab [<CommonParameters>]
    
    
DESCRIPTION
    Moves to the last PowerShell Tab
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Move-ToLastPowerShellTab -examples".
    For more information, type: "get-help Move-ToLastPowerShellTab -detailed".
    For technical information, type: "get-help Move-ToLastPowerShellTab -full".

NAME
    Show-Member
    
SYNOPSIS
    Displays a searchable gridview contaning the members of an object
    
    
SYNTAX
    Show-Member [<CommonParameters>]
    
    
DESCRIPTION
    Displays a searchable gridview containing the members of an object.
    The object can either a variable, cmdlet, or a type with no 
    constructors.
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Show-Member -examples".
    For more information, type: "get-help Show-Member -detailed".
    For technical information, type: "get-help Show-Member -full".

NAME
    Get-FunctionFromFile
    
SYNOPSIS
    Gets the Functions declared within a file
    
    
SYNTAX
    Get-FunctionFromFile [[-File] <ISEFile>] [<CommonParameters>]
    
    
DESCRIPTION
    Gets the Functions declared within a file in the Integrated Scripting Environment
    

RELATED LINKS

REMARKS
    To see the examples, type: "get-help Get-FunctionFromFile -examples".
    For more information, type: "get-help Get-FunctionFromFile -detailed".
    For technical information, type: "get-help Get-FunctionFromFile -full".




