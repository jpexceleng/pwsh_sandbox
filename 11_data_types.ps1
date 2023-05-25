# demonstrates common data type operations


$val = 3

# -------------------------------------------------------------------------
# print out the current data type of $val
#
Write-Host $val.GetType()


# -------------------------------------------------------------------------
# convert to other datatype 
#
$val = [float]$val
# $val = [double]$val
# $val = [bool]$val
# $val = [int]$val
# $val = [datetime]$val
write-Host $val.GetType()


# -------------------------------------------------------------------------
# data type comparisons
#
Write-Host $($val -is [datetime])
write-Host $($val -isnot [datetime])