# below demonstrates a switch statement

$choice = Read-Host "Enter number between 1 and 3"

# validate input
if ($choice -lt 1 -or $choice -gt 3)
{
    Write-Host "$choice is outside the required range of 1 and 3..."
    Write-Host "Exiting..."
    exit
}

# switch ($choice)
# {
#     1
#     {
#         Write-Host "One"
#     }
#     2
#     {
#         Write-Host "Two"
#     }
#     3
#     {
#         Write-Host "Three"
#     }
# }

# compact form:
switch ($choice)
{
    1 {Write-Host "One"}
    2 {Write-Host "Two"}
    3 {Write-Host "Three"}
}