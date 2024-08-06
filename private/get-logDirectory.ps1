function get-logDirectory {

    try {

        $environment = Get-Environment

        switch ($environment) {
            "Intune" { $logDirectory = "C:\ProgramData\IntuneManagementExtension\Logs" }
            "SCCM" { $logDirectory = "C:\Windows\CCM\Logs" }
            "Standalone" { $logDirectory = "C:\Logs" }
        }

        return $logDirectory
    }

    catch { throw "Error in get-logDirectory: $_" }

}