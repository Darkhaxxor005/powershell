# Re-enable Windows Defender via Registry
Write-Host "Re-enabling Windows Defender..."

# Enable AntiSpyware (Windows Defender)
$DefenderRegistryKey = "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender"
$DisableAntiSpyware = "DisableAntiSpyware"

if (Test-Path $DefenderRegistryKey) {
    Remove-ItemProperty -Path $DefenderRegistryKey -Name $DisableAntiSpyware -ErrorAction SilentlyContinue
}

# Enable Real-time Protection
$RealTimeProtectionRegistryKey = "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection"
$DisableRealTimeMonitoring = "DisableRealtimeMonitoring"

if (Test-Path $RealTimeProtectionRegistryKey) {
    Remove-ItemProperty -Path $RealTimeProtectionRegistryKey -Name $DisableRealTimeMonitoring -ErrorAction SilentlyContinue
}

Write-Host "Windows Defender Re-enabled. A restart may be required."
