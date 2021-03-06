﻿#Generated Form Function
function gui {

########################################################################
# Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
# Generated On: 20.02.2018 10:07
# Generated By: t.schneider1
########################################################################

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
#endregion

#region Generated Form Objects
$form2 = New-Object System.Windows.Forms.Form
$searchBox = New-Object System.Windows.Forms.GroupBox
$btnReset = New-Object System.Windows.Forms.Button
$btnSelectRechner = New-Object System.Windows.Forms.Button
$btnSelectUser = New-Object System.Windows.Forms.Button
$cboRechner = New-Object System.Windows.Forms.ComboBox
$cboUser = New-Object System.Windows.Forms.ComboBox
$tableBox = New-Object System.Windows.Forms.GroupBox
$btnExport = New-Object System.Windows.Forms.Button
$btnDeleteReport = New-Object System.Windows.Forms.Button
$dataGridWER = New-Object System.Windows.Forms.DataGridView
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.
$btnSelectUser_OnClick= 
{
    selectUser;
}

$btnExport_OnClick= 
{
    exportToExcel $dataGridWER.DataSource;
}

$btnReset_OnClick= 
{
    loadAll;
}

$btnDeleteReport_OnClick= 
{
    deleteReport

}

$btnSelectRechner_OnClick= 
{
    selectPc;
}

$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$form2.WindowState = $InitialFormWindowState
    loadAll;
}

#----------------------------------------------
#region Generated Form Code
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 736
$System_Drawing_Size.Width = 1163
$form2.ClientSize = $System_Drawing_Size
$form2.DataBindings.DefaultDataSourceUpdateMode = 0
$form2.Name = "form2"
$form2.Text = "Wer-Report Administrations-Tool"


$searchBox.DataBindings.DefaultDataSourceUpdateMode = 0
$searchBox.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",11.25,1,3,0)
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 256
$System_Drawing_Point.Y = 560
$searchBox.Location = $System_Drawing_Point
$searchBox.Name = "searchBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 150
$System_Drawing_Size.Width = 334
$searchBox.Size = $System_Drawing_Size
$searchBox.TabIndex = 6
$searchBox.TabStop = $False
$searchBox.Text = "Suchoptionen"

$form2.Controls.Add($searchBox)

$btnReset.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 245
$System_Drawing_Point.Y = 118
$btnReset.Location = $System_Drawing_Point
$btnReset.Name = "btnReset"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$btnReset.Size = $System_Drawing_Size
$btnReset.TabIndex = 4
$btnReset.Text = "reset"
$btnReset.UseVisualStyleBackColor = $True
$btnReset.add_Click($btnReset_OnClick)

$searchBox.Controls.Add($btnReset)


$btnSelectRechner.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 245
$System_Drawing_Point.Y = 76
$btnSelectRechner.Location = $System_Drawing_Point
$btnSelectRechner.Name = "btnSelectRechner"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 26
$System_Drawing_Size.Width = 75
$btnSelectRechner.Size = $System_Drawing_Size
$btnSelectRechner.TabIndex = 3
$btnSelectRechner.Text = "suchen"
$btnSelectRechner.UseVisualStyleBackColor = $True
$btnSelectRechner.add_Click($btnSelectRechner_OnClick)

$searchBox.Controls.Add($btnSelectRechner)


$btnSelectUser.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 245
$System_Drawing_Point.Y = 32
$btnSelectUser.Location = $System_Drawing_Point
$btnSelectUser.Name = "btnSelectUser"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 26
$System_Drawing_Size.Width = 75
$btnSelectUser.Size = $System_Drawing_Size
$btnSelectUser.TabIndex = 2
$btnSelectUser.Text = "suchen"
$btnSelectUser.UseVisualStyleBackColor = $True
$btnSelectUser.add_Click($btnSelectUser_OnClick)

$searchBox.Controls.Add($btnSelectUser)

$cboRechner.DataBindings.DefaultDataSourceUpdateMode = 0
$cboRechner.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 77
$cboRechner.Location = $System_Drawing_Point
$cboRechner.Name = "cboRechner"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 26
$System_Drawing_Size.Width = 210
$cboRechner.Size = $System_Drawing_Size
$cboRechner.TabIndex = 1

$searchBox.Controls.Add($cboRechner)

$cboUser.DataBindings.DefaultDataSourceUpdateMode = 0
$cboUser.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 32
$cboUser.Location = $System_Drawing_Point
$cboUser.Name = "cboUser"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 26
$System_Drawing_Size.Width = 210
$cboUser.Size = $System_Drawing_Size
$cboUser.TabIndex = 0

$searchBox.Controls.Add($cboUser)



$tableBox.DataBindings.DefaultDataSourceUpdateMode = 0
$tableBox.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",11.25,1,3,0)
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 12
$System_Drawing_Point.Y = 560
$tableBox.Location = $System_Drawing_Point
$tableBox.Name = "tableBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 150
$System_Drawing_Size.Width = 202
$tableBox.Size = $System_Drawing_Size
$tableBox.TabIndex = 5
$tableBox.TabStop = $False
$tableBox.Text = "Tabellenoptionen"

$form2.Controls.Add($tableBox)

$btnExport.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 88
$btnExport.Location = $System_Drawing_Point
$btnExport.Name = "btnExport"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 37
$System_Drawing_Size.Width = 190
$btnExport.Size = $System_Drawing_Size
$btnExport.TabIndex = 1
$btnExport.Text = "Excel Export"
$btnExport.UseVisualStyleBackColor = $True
$btnExport.add_Click($btnExport_OnClick)

$tableBox.Controls.Add($btnExport)


$btnDeleteReport.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 32
$btnDeleteReport.Location = $System_Drawing_Point
$btnDeleteReport.Name = "btnDeleteReport"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 37
$System_Drawing_Size.Width = 190
$btnDeleteReport.Size = $System_Drawing_Size
$btnDeleteReport.TabIndex = 0
$btnDeleteReport.Text = "Report löschen"
$btnDeleteReport.UseVisualStyleBackColor = $True
$btnDeleteReport.add_Click($btnDeleteReport_OnClick)

$tableBox.Controls.Add($btnDeleteReport)


$dataGridWER.DataBindings.DefaultDataSourceUpdateMode = 0
$dataGridWER.DataMember = ""
$dataGridWER.Autosize = $false
#$dataGridWER.HeaderForeColor = [System.Drawing.Color]::FromArgb(255,0,0,0)
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 12
$System_Drawing_Point.Y = 12
$dataGridWER.Location = $System_Drawing_Point
$dataGridWER.Name = "dataGridWER"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 542
$System_Drawing_Size.Width = 1139
$dataGridWER.Size = $System_Drawing_Size
$dataGridWER.TabIndex = 0

$form2.Controls.Add($dataGridWER)

#endregion Generated Form Code

#Save the initial state of the form
$InitialFormWindowState = $form2.WindowState
#Init the OnLoad event to correct the initial state of the form
$form2.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$form2.ShowDialog()| Out-Null

} #End Function
