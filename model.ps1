####################################
# Reports
####################################
class reports
{
    reports()
    {
    }

    [System.Data.DataSet]get() # Aus DB auslesen und Übergeben
    {
        $dset = $Global:sql.query("SELECT 
        report.reportID as ReportID,
        report.reportType as Type,
        report.eventTime as Zeit,
        report.bucketID as BucketID,
        report.appName as Anwendung,
        user.name as Username,
        computer.mac as Macadresse,
        computer.os as System,
        computer.hostname as Rechner
        FROM report
        LEFT JOIN user ON report.userID = user.userID
        LEFT JOIN computer ON report.computerID = computer.computerID;");
        
        return $dset; # Übergabe als DataSet
    }
}

####################################
# Users
####################################
class user
{
    user()
    {
    }

    [System.Data.DataSet]getAll()
    {
        $dset = $Global:sql.query("SELECT 
        name
        FROM
        user;");
        
        return $dset;  # Übergabe als DataSet
    }
}

####################################
# Computer
####################################

class computer
{
    computer()
    {
    }

    [System.Data.DataSet]getAll() # Aus DB auslesen und Übergeben
    {
        $dset = $Global:sql.query("SELECT 
        *
        FROM
        computer;");
        
        return $dset; # Übergabe als DataSet
    }
}

####################################
# search in DB
####################################

class search
{
    search()
    {
    }

    [System.Data.DataSet]go($table,$field,$value) # Aus DB auslesen und Übergeben
    {
        $dset = $Global:sql.query("SELECT 
            report.reportID as ReportID,
            report.reportType as Type,
            report.eventTime as Zeit,
            report.bucketID as BucketID,
            report.appName as Anwendung,
            user.name as Username,
            computer.mac as Macadresse,
            computer.os as System,
            computer.hostname as Rechner
            FROM report
                LEFT JOIN user ON report.userID = user.userID 
                LEFT JOIN computer ON report.computerID = computer.computerID
            WHERE $table.$field = '$value';");

        return $dset; # übergabe als DataSet
    }
}