####################################
# Globale Variablen
####################################
$Global:sql;

####################################
# Klassen Laden
####################################
try 
{
    . ("H:\Schule\12FI2\AWP\Whatson\sql.ps1")
    . ("H:\Schule\12FI2\AWP\Whatson\model.ps1")
    . ("H:\Schule\12FI2\AWP\Whatson\controller.ps1")
    . ("H:\Schule\12FI2\AWP\Whatson\gui_final.ps1")
}
catch [Exception]
{
    Write-Host "Includes konnten nicht geladen werden:";
    Write-Host $_.Exception.Message
}

############
# SQL Schließen
############
$Global:sql.close();