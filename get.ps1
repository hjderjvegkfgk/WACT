# Enable TLSv1.2 for compatibility with older clients
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor [System.Net.SecurityProtocolType]::Tls12

$DownloadURL = 'https://github.com/hjderjvegkfgk/WACT/raw/main/WACT_AIO.bat'
$FilePath = "$env:TEMP\WACT_AIO.cmd"
$ScriptArgs = "$args "

try {
    Invoke-WebRequest -Uri $DownloadURL -UseBasicParsing -OutFile $FilePath -ErrorAction Stop
} catch {
    try {
        Invoke-WebRequest -Uri $DownloadURL2 -UseBasicParsing -OutFile $FilePath -ErrorAction Stop
    } catch {
    Write-Error $_
  Return
}
}

if (Test-Path $FilePath) {
    Start-Process $FilePath $ScriptArgs -Wait
    $item = Get-Item -LiteralPath $FilePath
    $item.Delete()
}
