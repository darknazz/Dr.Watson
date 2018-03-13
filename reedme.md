#Simple alternative, if you have PowerShell 5, or the PowerShellGet module:
Install-Module PSExcel

# Import the module.
Import-Module PSExcel

# Get commands in the module
Get-Command -Module PSExcel

# Get help for a command
Get-Help Import-XLSX -Full
