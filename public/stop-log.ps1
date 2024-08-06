function stop-log {

    param(
        [int]$LogRetentionDays = 180
    )

    try {

        # Stop the transcript
        Stop-Transcript

        # Clean up old log files
       remove-oldLogs

    }

    catch {

        throw "Error in Stop-log: $_"

    }
    
}