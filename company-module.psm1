# Private functions (users should not use these functions)
. "$PSScriptRoot\Private\Get-Environment.ps1"
. "$PSScriptRoot\Private\Set-LogPath.ps1"
. "$PSScriptRoot\Private\Clean-OldLogs.ps1"

# Public functions (users can use these functions)
. "$PSScriptRoot\Public\start-64bitMode.ps1"
. "$PSScriptRoot\Public\Start-Log.ps1"
. "$PSScriptRoot\Public\Stop-Log.ps1"

