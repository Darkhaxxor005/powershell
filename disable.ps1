# Disable Windows Defender via Registry
Write-Host "Disabling Windows Defender..."

# Disable AntiSpyware (Windows Defender)
$DefenderRegistryKey = "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender"
$DisableAntiSpyware = "DisableAntiSpyware"
$Value = 1

if (-not (Test-Path $DefenderRegistryKey)) {
    New-Item -Path $DefenderRegistryKey -Force
}
Set-ItemProperty -Path $DefenderRegistryKey -Name $DisableAntiSpyware -Value $Value

# Disable Real-time Protection
$RealTimeProtectionRegistryKey = "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection"
$DisableRealTimeMonitoring = "DisableRealtimeMonitoring"
$Value = 1

if (-not (Test-Path $RealTimeProtectionRegistryKey)) {
    New-Item -Path $RealTimeProtectionRegistryKey -Force
}
Set-ItemProperty -Path $RealTimeProtectionRegistryKey -Name $DisableRealTimeMonitoring -Value $Value

Write-Host "Windows Defender Disabled. A restart may be required."
