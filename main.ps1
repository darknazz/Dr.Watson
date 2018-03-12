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
    . ("H:\Schule\12FI2\AWP\Whatson\loginView.ps1")
}
catch [Exception]
{
    Write-Host "Includes konnten nicht geladen werden:";
    Write-Host $_.Exception.Message
}

####################################
# Programm START
####################################

####################################
# MySQL Connect
####################################
$Global:sql = [sql]::new("localhost","root","","watson_12fi2"); # MySQL Verbindung aufbauen

loginView

####################################
# Programm ENDE
####################################

############
# SQL Schließen
############
$Global:sql.close();