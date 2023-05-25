# demonstrates common data type operations

$val = 3

# print out the data type of $val
Write-Host $val.GetType()

# convert $val to float 
$val = [float]$val
write-Host $val.GetType()

# convert $val to double 
$val = [double]$val
write-Host $val.GetType()

# convert $val to bool
$val = [bool]$val
write-Host $val.GetType()

# convert $val to integer
$val = [int]$val
write-Host $val.GetType()

# convert $val to datetime
$val = [datetime]$val
write-Host $val.GetType()