# demonstrate methods for working with arrays.

# multiple ways to declare an array
$arr = 90,102,24,36 # works most of the time
#$arr = (90, 102, 24, 36)
#$arr = @(90, 102, 24, 36) # @() syntax is preferred
# $arr = @(
#     90,
#     102,
#     24,
#     36
# )


# --------------------------------------------------------------------------
# Test for empty array:
# - warning when $null parameter not on left side of comparison.
#
if ( $null -eq $arr ) {
    Write-Host "Array is empty."
}
else {
    Write-Host "Array is not empty."
}


# --------------------------------------------------------------------------
# access array element by index
# pwsh is flexible in how array elements are accessed:
#
# $i = 3
# Write-Host "Value at index $i starting from zero is $($arr[$i])"

# # reading multiple indices at once
# Write-Host $arr[0, 2, 1]

# # reading all indices
# Write-Host $arr[0..3]

# # reading all indices in reverse
# Write-Host $arr[3..0]


# --------------------------------------------------------------------------
# Test if array contains a specific value
#
if ( $arr -contains "36" ) {
    Write-Host "Array contains element 36."
}
else {
    Write-Host "Array does not contain element 36."
}


if ( $arr -notcontains "999" ) {
    Write-Host "Array does not contain element 999."
} 
else {
    Write-Host "Array contains element 999."
}


# --------------------------------------------------------------------------
# output array elements using wildcards or regex
#
write-Host $($arr -like "9*")
Write-Host $($arr -notlike "9*")
Write-Host $($arr -match "90")
Write-Host $($arr -notmatch "90")


# --------------------------------------------------------------------------
# error thrown when READING element outside of array bounds?
# - throws no error; simply writes blank to console.
#
# try {
#     $oob = $($arr.Count)
#     $oob++ 
#     Write-Host "Value at index $oob starting from zero is $($arr[$oob])"
# }
# catch {
#     Write-Host "Something went wrong: $_.exception.message"
# }

# --------------------------------------------------------------------------
# Get number of elements in array
# 
# $count = $arr.Count
# Write-Host "Array `$arr contains $count elements."


# --------------------------------------------------------------------------
# delete last element of array:
# - error thrown if array index is out of bounds
# 
# Write-Host $arr
# try {
#     $arr[$($arr.Count) - 1] = $null
#     Write-Host $arr
# }
# catch {
#     Write-Host "Something went wrong: $_.exception.message"
# }


# --------------------------------------------------------------------------
# delete element in middle of array:
# - array size doesn't change after deletion
# 
# Write-Host $arr
# Write-Host $arr.Count
# try {
#     $arr[1] = $null
#     Write-Host $arr
#     Write-Host $arr.Count
# }
# catch {
#     Write-Host "Something went wrong: $_.exception.message"
# }