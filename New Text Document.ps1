$programName = "NoKeyNoWindows"
$programPath = "C:\Users\Public\Music\NoKeyNoWindows.exe"

while ($true) {

    $process = Get-Process | Where-Object { $_.ProcessName -eq $programName }

    if ($process -eq $null) {

        if (Test-Path $programPath) {
            Start-Process $programPath -Verb RunAs
            Write-Host "Program started as Administrator."
        } else {
            Write-Host "Program not found at specified path."
        }
    } else {
        Write-Host "Program is already running."
    }


    Start-Sleep -Seconds 5
}
