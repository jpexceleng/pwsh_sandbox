# below demonstrates a switch statement

$choice = Read-Host "Enter number between 1 and 3"

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
#     default
#     {
#         Write-Host "No match"
#     }
# }

# compact form:
switch ($choice)
{
    1 {Write-Host "One"}
    2 {Write-Host "Two"}
    3 {Write-Host "Three"}
    default {Write-Host "No match"}
}