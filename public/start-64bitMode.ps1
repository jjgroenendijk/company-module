if ($env:PROCESSOR_ARCHITEW6432 -eq "AMD64") {

    write-warning "Restarting in 64-bit mode"

    if ($myInvocation.Line) {

        &"$env:WINDIR\sysnative\windowspowershell\v1.0\powershell.exe" -NonInteractive -NoProfile $myInvocation.Line

    }

    else {

        &"$env:WINDIR\sysnative\windowspowershell\v1.0\powershell.exe" -NonInteractive -NoProfile -file "$($myInvocation.InvocationName)" @args

    }

exit $lastexitcode

}