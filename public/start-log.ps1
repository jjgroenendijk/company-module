Function Start-log {

    param(
        [string]$applicationName,
        [int]$LogRetentionDays = 180
    )

    try {

        # Determine the current date and time
        $currentDateTime = Get-Date -Format FileDateTimeUniversal

        # Determine the current environment (SCCM, Intune, etc.) for the log directory
        $logDirectory = get-logDirectory

        # Determine the name of the log file
        $logName = "Log-$applicationName-$currentDateTime.log"

        # Clean up old log files
        remove-oldLogs

        # Create a new log file
        Start-Transcript -Path "$logDirectory\$logName" -Append -IncludeInvocationHeader

    }

    catch {

        throw "Error in Start-log: $_"
    
    }

}