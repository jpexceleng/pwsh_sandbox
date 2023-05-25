# demonstrates use of functions.
# functions should be placed at beginning of script.

function multiply([float]$val1, [float]$val2)
{
    $val1 * $val2
}

Write-Host $(multiply 3 5.6)

function multiply2
{
    Param(
        [float]$val1,
        [float]$val2
    )
    $val1 * $val2
}

Write-Host $(multiply2 3 5.6)