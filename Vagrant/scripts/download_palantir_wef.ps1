# Purpose: Downloads and unzips a copy of the Palantir WEF Github Repo. This includes WEF subscriptions and custom WEF channels.

# GitHub requires TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Write-Host "Downloading and unzipping the Palantir Windows Event Forwarding Repo from Github..."

$wefRepoPath = 'C:\Users\vagrant\AppData\Local\Temp\wef-Master.zip'

# GitHub requires TLS 1.2 as of 2/1/2018
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri "https://github.com/palantir/windows-event-forwarding/archive/master.zip" -OutFile $wefRepoPath
Expand-Archive -path "$wefRepoPath" -destinationpath 'c:\Users\vagrant\AppData\Local\Temp' -Force
