####################################
# Globale Variablen
####################################
$Global:sql;

####################################
# Change to your custom data
####################################

$data_dir = "H:\Schule\12FI2\AWP\Whatson\";

$mysql_host = "localhost";
$mysql_user = "root";
$mysql_pass = "";
$mysql_db = "watson_12fi2"

####################################
# Includes Laden
####################################
try 
{
    . ("$data_dir\sql.ps1")
    . ("$data_dir\model.ps1")
    . ("$data_dir\controller.ps1")
    . ("$data_dir\gui_final.ps1")
    . ("$data_dir\loginView.ps1")
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
$Global:sql = [sql]::new($mysql_host,$mysql_user,$mysql_pass,$mysql_db); # MySQL Verbindung aufbauen

loginView # start with login

####################################
# Programm ENDE
####################################

############
# SQL Schließen
############
$Global:sql.close();