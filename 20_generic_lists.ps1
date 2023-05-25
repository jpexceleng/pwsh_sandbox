# If you need to add elements to an array in an efficient manner, use
# a .NET Generic List object; user must specify the type of data that will
# make up the collection.
#
# to shorten namespace in declaration, use 'using' keyword; must appear as
# first line in your script.
using namespace System.Collections.Generic

# $arr = [System.Collections.Generic.List[int]]::new()
$arr = [List[int]]::new()

# add elements to ArrayList
for ($i = 0; $i -lt 4; $i++)
{
    # $arr += $i
    $arr.Add($i) # use [void] to suppress unexpected output
}

Write-Host $arr


# ArrayList is .NET object also available, but is deprecated; using Generic
# Lists is prefferred.
# ArrayList declaration
# $arr = [System.Collections.ArrayList]::new()

# add elements to ArrayList
# for ($i = 0; $i -lt 4; $i++)
# {
#     # $arr += $i
#     # [void]$arr.Add($i) # use [void] to suppress unexpected output
# }

# Write-Host $arr