Function ExpNow {
  param(
    [string]$Path = "."
  )
  explorer $Path
}

Set-Alias -Name exp -Value ExpNow
