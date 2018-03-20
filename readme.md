#install PSexcel for the excel export 

Install-Module PSExcel

Import-Module PSExcel

Get-Command -Module PSExcel

Get-Help Import-XLSX -Full

# customize variables in main.ps1
you have to edit the variables to your own workspace.
in $data_dir you have to set the directory where the scripts are stored.
