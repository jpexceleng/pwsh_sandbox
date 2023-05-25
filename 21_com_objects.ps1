# several windows applications can be manipulated through pwsh by using 
# COM objects.
#
# https://social.technet.microsoft.com/Forums/office/en-US/33dbc1c4-40ee-4ef8-b25b-f29440ab3194/using-com-objects-excel-from-powershell?forum=ITCG
# https://www.getfishtank.com/blog/useful-powershell-commands-for-excel

# start Microsoft Excel application instance
$excel = New-Object -ComObject Excel.application

# find all methods and properties availble for the $excel object:
# $excel | Get-Member

# show the application instance
# $excel.visible = $true

# create a new workbook
$wb = $excel.workbooks.add()

# load an existing workbook
# $filepath = "repos/pwsh_sandbox/res/workbook.xlsx"
# $wb = $excel.workbooks.open($filepath) 

# update workbook properties
$wb.author = "JP- jpeterson@exceleng.net"
$wb.title = "some title"
$wb.subject = "some subject"

# delete excess worksheets
try {
    for($i = $wb.sheets.count; $i -gt 1; $i--) {
        $wb.sheets.item($num).delete()
    }
}
catch {
    Write-Host "Something went wrong: $_.exception.message"
}

# rename remaining worksheet to "data"
$ws = $wb.sheets | Where-Object {$_.name -eq "Sheet1"}
$ws.name = "data"

# add some data to a specific row and column
$ws.range("A1:A10").cells = "90"
$ws.cells.item(11, 1).value = "60"
$ws.cells.item(12, 1).formula = "=SUM(A1:A11)"

# get last row and column in worksheet
$lr = $ws.usedrange.rows.count
$lc = $ws.usedrange.columns.count
$ws.cells.item($lr, $lc).value = "next empty cell"

# download data from internet and store in excel workbook
# TODO

# save the workbook to a specific file location
$wb.saveas("repos/pwsh_sandbox/res/workbook.xlsx")
# $wb.save() # save existing workbook

# terminate application instance
$excel.quit()