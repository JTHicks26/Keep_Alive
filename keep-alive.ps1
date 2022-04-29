clear host
#
# Script to keep the PC alive, will prevent screen lock and sleep.
# Works by pressing F13 every 60 seconds.
#

$opt = (Get-Host).PrivateData
$opt.WarningBackgroundColor = "DarkCyan"
$opt.WarningForegroundColor = "white"

write-warning "Your PC will not go to sleep whilst this window is open..."
Do {
[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
[System.Windows.Forms.SendKeys]::SendWait("{F13}")

Start-Sleep -Seconds 60

} While ($true)