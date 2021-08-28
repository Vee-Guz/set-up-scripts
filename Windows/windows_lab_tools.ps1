#assesment Aug. 28, 2021

#install IIS
Enable-WindowsOptionalFeature -Online -FeatureName ISS-WebServerRole

#install DNS
InstallDns:$true

#install ActiveDirectory
Install-ADDForest -CreateDnsDelegation:$false -DomainName "vero.com" -DomainNetbiosName "VERO" -LogPath "C:\Windows\NTDS" -NoRebootOnCompletion:$false -SysvolPath "C:\Windows\SYSVOL" -Force:$true

#install chocolately
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
