# demonstrate methods for working with arrays.

# declare an array
# $arr = (0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
$arr = @(0, 1, 1, 2, 3, 5, 8, 13)

# --------------------------------------------------------------------------
# access array element by index
#
# Write-Host "Value at index 7 is" $arr[7]

# --------------------------------------------------------------------------
# iterate through array #1
#
# foreach ($elem in $arr)
# {
#     # perform some operation on array
#     Write-Host $elem
# }

# --------------------------------------------------------------------------
# iterate through array #2
#
# for ($i = 0; $i -lt $arr.Count; $i++) {
#     Write-Host $arr[$i]
# }

# --------------------------------------------------------------------------
# iterate through array #3
#
# $i = 0
# do {
#     Write-Host $arr[$i]    
#     $i++
# } until (
#     $i -ge $arr.Count
# )

# --------------------------------------------------------------------------
# iterate through array #4
#
$i = 0
do {
    Write-Host $arr[$i]
    $i++
} while (
    $i -lt $arr.Count
)