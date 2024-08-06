function remove-oldLogs {

    param(
        [string]$logDirectory,
        [int]$LogRetentionDays = 180
    )

    try {

        $logDirectory = get-logDirectory

        Get-ChildItem -Path $logDirectory -Filter "*.log" | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-$LogRetentionDays) } | Remove-Item -Force
    }

    catch {

        throw "Error in remove-oldLogs: $_"

    }

}