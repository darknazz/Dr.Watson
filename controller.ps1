####################################
#  all reports
####################################
function getAllReports
{
    $reports = [reports]::new(); # class init
    $dataSet = $reports.get(); # get all reports
    updateGrid($dataSet); # update grib
}

####################################
#  all users
####################################
function getAllUsers
{
    $user = [user]::new();
    $userlist = $user.getAll();
    $userarray = $Global:sql.dataSetToArray($userlist,0); # dataset to array for listfield

    foreach($user in $userarray) # for each item in array
    {
        $cboUser.Items.Add($user); # add user to list
    }
}

####################################
#  all computers
####################################
function getAllComputers
{
    $computer = [computer]::new(); # init class
    $computerList = $computer.getAll(); # get all pc´s
    $computerArray = $Global:sql.dataSetToArray($computerList,3); # dataset to list

    foreach($computer in $computerArray)
    {
        $cboRechner.Items.Add($computer); # pc to list
    }
}
####################################
#  gui
####################################
function updateGrid($dataset)
{
    $dataGridWER.DataSource = $null; # set empty grib
    $dataGridWER.DataSource = $dataset.Tables[0]; # set dataset to datagrid
    $dataGridWER.DataBind; # bind data to grid
    $form1.refresh(); # refresh grid
}

####################################
#  get User from DB
####################################
function selectUser
{
    $user = $cboUser.SelectedItem; # get selected item
    $search = [search]::new(); # init class
    $dataset = $search.go("user","name",$user); # search for user
    updateGrid($dataset); # update grub
}

####################################
#  get PC from DB
###################################
function selectPc
{
    $pc = $cboRechner.SelectedItem; # get selected pc from list
    $search = [search]::new(); # init class
    $dataset = $search.go("computer","hostname",$pc); # search in db
    updateGrid($dataset); # update class
}

####################################
#  init function - loadd default view
###################################
function loadAll
{
    getAllUsers;
    getAllComputers;
    getAllReports;
}