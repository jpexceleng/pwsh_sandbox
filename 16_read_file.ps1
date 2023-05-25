# demonstrates use of Get-Content cmdlet to read text data from file.
# 

# ------------------------------------------------------------------------
# following reads each line of the file into an element of an array; 
# $ip_addresses is now an array.
#
$ip_addresses = $(Get-Content -Path "res/data.txt")

foreach ($elem in $ip_addresses)
{
    Write-Host $elem
}

# ------------------------------------------------------------------------
# following reads each line of the file.
#
