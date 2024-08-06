function Get-Environment {
    if (Test-Path "HKLM:\SOFTWARE\Microsoft\IntuneManagementExtension") {
        return "Intune"
    } elseif (Test-Path "HKLM:\SOFTWARE\Microsoft\SMS") {
        return "SCCM"
    } else {
        return "Standalone"
    }
}