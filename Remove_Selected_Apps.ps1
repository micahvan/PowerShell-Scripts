$RemoveApps = @(
"22094SynapticsIncorporate.AudioControls"
"AD2F1837.HPPCHardwareDiagnosticsWindows"
"AD2F1837.HPPrinterControl"
"AD2F1837.HPSureShieldAI"
"Microsoft.549981C3F5F10"
"Microsoft.Advertising.Xaml"
"Microsoft.BingWeather"
"Microsoft.GetHelp"
"Microsoft.Getstarted"
"Microsoft.Messaging"
"Microsoft.MicrosoftOfficeHub"
"Microsoft.MicrosoftSolitaireCollection"
"Microsoft.MixedReality.Portal"
"Microsoft.Office.OneNote"
"Microsoft.OneConnect"
"Microsoft.People"
"Microsoft.Services.Store.Engagement"
"Microsoft.SkypeApp"
"Microsoft.Wallet"
"Microsoft.WindowsCamera"
"Microsoft.WindowsFeedbackHub"
"Microsoft.WindowsMaps"
"Microsoft.WindowsSoundRecorder"
"Microsoft.Xbox.TCUI"
"Microsoft.XboxApp"
"Microsoft.XboxGameOverlay"
"Microsoft.XboxGamingOverlay"
"Microsoft.XboxIdentityProvider"
"Microsoft.XboxSpeechToTextOverlay"
"Microsoft.YourPhone"
)

DID NOT REMOVE
Microsoft.Advertising.Xaml
Microsoft.Microsoft3DViewer
Microsoft.MSPaint
Microsoft.Print3D
microsoft.windowscommunicationsapps

ForEach ($RemoveApp in $RemoveApps) {
Get-AppxPackage -Name $RemoveApp -AllUsers -PackageTypeFilter Bundle | Remove-AppxPackage -AllUsers
Get-AppXProvisionedPackage -Online | Where-Object DisplayName -eq $RemoveApp | Remove-AppxProvisionedPackage -Online
}


ForEach ($RemoveApp in $RemoveApps) {
Get-AppXProvisionedPackage –Path c:\offline | Where-Object DisplayName -eq $RemoveApp | Remove-AppxProvisionedPackage –Path c:\offline
}