# script prompts user for input

# --------------------------------------------------------------------------
# The following prompts user for input.
#
# $var = Read-Host -Prompt "Please enter some input"
# Write-Host "The input you entered is: $var"

# --------------------------------------------------------------------------
# The following prompts user for input and outputs a formatted date. 
# 
$name = Read-Host -Prompt "Enter your name"
$date = Get-Date -Format yyyy-MMM-dd
Write-Host "Today is $date."
Write-Host "Today is the day $name began their powershell journey."