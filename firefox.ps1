$ErrorActionPreference = "Stop"
# Enable TLSv1.2 for compatibility with older clients for current session
[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12

$firefoxUrl = "https://download.mozilla.org/?product=firefox-latest&os=win64"
$destination = "$env:TEMP\firefox_installer.exe"

Invoke-WebRequest -Uri $firefoxUrl -OutFile $destination

Start-Process -FilePath "$env:TEMP\firefox_installer.exe" -Wait

Remove-Item "$env:TEMP\firefox_installer.exe"