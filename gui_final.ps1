﻿#Generated Form Function
function GenerateForm {
########################################################################
# Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
# Generated On: 27.11.2014 20:41
# Generated By: Karl
########################################################################

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
#endregion

#region Generated Form Objects
$form1 = New-Object System.Windows.Forms.Form
$btnUpdateWER = New-Object System.Windows.Forms.Button
$btndeleteWER = New-Object System.Windows.Forms.Button
$btnExportExcel = New-Object System.Windows.Forms.Button
$btnSelectUser = New-Object System.Windows.Forms.Button
$btnSelectRechner = New-Object System.Windows.Forms.Button
$cboUser = New-Object System.Windows.Forms.ComboBox
$cboRechner = New-Object System.Windows.Forms.ComboBox
$dataGridWER = New-Object System.Windows.Forms.DataGrid
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects



#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.
$btnUpdateWER_OnClick= 
{
#TODO: Place custom script here

}


$handler_form1_Load= 
{
    loadAll;
}

$btnSelectUser_OnClick= 
{
    selectUser;
}

$btnExportExcel_OnClick= 
{
#TODO: Place custom script here

}

$btnSelectRechner_OnClick= 
{
    selectPc;

}

$btndeleteWER_OnClick= 
{
#TODO: Place custom script here

}

$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$form1.WindowState = $InitialFormWindowState
}

#----------------------------------------------
#region Generated Form Code
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 433
$System_Drawing_Size.Width = 1100
$form1.ClientSize = $System_Drawing_Size
$form1.DataBindings.DefaultDataSourceUpdateMode = 0
$form1.Name = "form1"
$form1.Text = "Primal Form"
$form1.add_Load($handler_form1_Load)


$btnUpdateWER.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 470
$System_Drawing_Point.Y = 384
$btnUpdateWER.Location = $System_Drawing_Point
$btnUpdateWER.Name = "btnUpdateWER"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 36
$System_Drawing_Size.Width = 124
$btnUpdateWER.Size = $System_Drawing_Size
$btnUpdateWER.TabIndex = 7
$btnUpdateWER.Text = "Ändern"
$btnUpdateWER.UseVisualStyleBackColor = $True
$btnUpdateWER.add_Click($btnUpdateWER_OnClick)

$form1.Controls.Add($btnUpdateWER)


$btndeleteWER.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 671
$System_Drawing_Point.Y = 384
$btndeleteWER.Location = $System_Drawing_Point
$btndeleteWER.Name = "btndeleteWER"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 36
$System_Drawing_Size.Width = 128
$btndeleteWER.Size = $System_Drawing_Size
$btndeleteWER.TabIndex = 6
$btndeleteWER.Text = "Löschen"
$btndeleteWER.UseVisualStyleBackColor = $True
$btndeleteWER.add_Click($btndeleteWER_OnClick)

$form1.Controls.Add($btndeleteWER)


$btnExportExcel.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 949
$System_Drawing_Point.Y = 384
$btnExportExcel.Location = $System_Drawing_Point
$btnExportExcel.Name = "btnExportExcel"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 36
$System_Drawing_Size.Width = 109
$btnExportExcel.Size = $System_Drawing_Size
$btnExportExcel.TabIndex = 5
$btnExportExcel.Text = "Export Excel"
$btnExportExcel.UseVisualStyleBackColor = $True
$btnExportExcel.add_Click($btnExportExcel_OnClick)

$form1.Controls.Add($btnExportExcel)


$btnSelectUser.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 948
$System_Drawing_Point.Y = 193
$btnSelectUser.Location = $System_Drawing_Point
$btnSelectUser.Name = "btnSelectUser"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 27
$System_Drawing_Size.Width = 110
$btnSelectUser.Size = $System_Drawing_Size
$btnSelectUser.TabIndex = 4
$btnSelectUser.Text = "Auswählen"
$btnSelectUser.UseVisualStyleBackColor = $True
$btnSelectUser.add_Click($btnSelectUser_OnClick)

$form1.Controls.Add($btnSelectUser)


$btnSelectRechner.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 939
$System_Drawing_Point.Y = 44
$btnSelectRechner.Location = $System_Drawing_Point
$btnSelectRechner.Name = "btnSelectRechner"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 30
$System_Drawing_Size.Width = 117
$btnSelectRechner.Size = $System_Drawing_Size
$btnSelectRechner.TabIndex = 3
$btnSelectRechner.Text = "Auswählen"
$btnSelectRechner.UseVisualStyleBackColor = $True
$btnSelectRechner.add_Click($btnSelectRechner_OnClick)

$form1.Controls.Add($btnSelectRechner)

$cboUser.DataBindings.DefaultDataSourceUpdateMode = 0
$cboUser.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 805
$System_Drawing_Point.Y = 193
$cboUser.Location = $System_Drawing_Point
$cboUser.Name = "cboUser"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 21
$System_Drawing_Size.Width = 113
$cboUser.Size = $System_Drawing_Size
$cboUser.TabIndex = 2

$form1.Controls.Add($cboUser)

$cboRechner.DataBindings.DefaultDataSourceUpdateMode = 0
$cboRechner.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 805
$System_Drawing_Point.Y = 44
$cboRechner.Location = $System_Drawing_Point
$cboRechner.Name = "cboRechner"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 21
$System_Drawing_Size.Width = 113
$cboRechner.Size = $System_Drawing_Size
$cboRechner.TabIndex = 1

$form1.Controls.Add($cboRechner)

$dataGridWER.DataBindings.DefaultDataSourceUpdateMode = 0
$dataGridWER.DataMember = ""
$dataGridWER.HeaderForeColor = [System.Drawing.Color]::FromArgb(255,0,0,0)
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 12
$System_Drawing_Point.Y = 44
$dataGridWER.Location = $System_Drawing_Point
$dataGridWER.Name = "dataGridWER"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 322
$System_Drawing_Size.Width = 730
$dataGridWER.Size = $System_Drawing_Size
$dataGridWER.TabIndex = 0

$form1.Controls.Add($dataGridWER)

#endregion Generated Form Code

#Save the initial state of the form
$InitialFormWindowState = $form1.WindowState
#Init the OnLoad event to correct the initial state of the form
$form1.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$form1.ShowDialog()| Out-Null

} #End Function

#Call the Function
GenerateForm
