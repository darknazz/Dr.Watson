####################################
# Libs laden
####################################
[void][System.Reflection.Assembly]::LoadWithPartialName("MySql.Data") # MySQL for .Net landen

####################################
# MySQL Connect
####################################
$Global:sql = [sql]::new("localhost","root","","watson_12fi2"); # MySQL Verbindung aufbauen

####################################
# Klasse
####################################
class sql
{
	$con = "";
	$user = "";
	$pass = "";
	$hostip = "";
	$db = "";
	
	sql($hostip,$user,$pass,$db) # Constructor, write data to variables
	{
		$this.user = $user;
		$this.pass = $pass;
		$this.hostip = $hostip;
		$this.db = $db;
        
        $this.connect();
	}
	
	[Void]connect() # connect to DB and write pointer to DB
	{
        try
        {
		    $str = "Server=$($this.hostip);Uid=$($this.user);Pwd='$($this.pass)';Database=$($this.db)";
		    $this.con = New-Object Mysql.Data.MysqlClient.MysqlConnection;
		    $this.con.ConnectionString = $str;
			$this.con.Open();
        }
        catch [Exception]
        {
            Write-Host "Keine Verbindung zur DB möglich";
			Write-Host $_.Exception.Message
        }
        
	}
	
	[System.Data.DataSet]query($query) # send query to request
	{
        $dataSet = "";
        try
        {
            #Adapter Konfigurieren
			$command = New-Object MySql.Data.MySqlClient.MySqlCommand;
            $dataAdapter = New-Object MySql.Data.MySqlClient.MySqlDataAdapter;

            # Command vorbereiten
            $command.CommandText = $query;
            $command.Connection = $this.con;

            #command absenden
            $dataAdapter.SelectCommand = $command;

            #DataSet Vorbereiten
            $dataSet = New-Object System.Data.DataSet;
            #DataSet leeren damit alte Daten verschwinden
            $dataSet.Reset();

            $dataAdapter.Fill($dataSet);            
        }
        catch [Exception]
        {
			Write-Host "Fehler im Query:";
            Write-Host $query;
			Write-Host $_.Exception.Message
        }
        return $dataSet;
	}

    [array]dataSetToArray($dataset,$datapos) # convert dataset to array
    {
        $array = @();
        foreach ($Row in $dataset.Tables[0].Rows)
        { 
            $array += $Row[$datapos];
        }
        return $array;
    }

    [void]close() # close connection
    {
        $this.con.Close();
    }
}