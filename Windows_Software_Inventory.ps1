﻿Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*, HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate, UninstallString | Sort-Object -Property DisplayName | Export-Csv -Path "$home\Downloads\$((Get-Date).ToString("yyyyMMdd"))_SoftwareList_Programs.csv"; Get-AppxPackage -AllUsers | Select Name, Version, PackageFullName, Publisher, NonRemovable | Sort Name | Export-Csv -Path "$home\Downloads\$((Get-Date).ToString("yyyyMMdd"))_SoftwareList_WindowsApps.csv"