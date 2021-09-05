$logfilepath="C:\Users\brend\Documents\batterylog.txt"
$condition = (Get-WmiObject win32_battery).estimatedChargeRemaining
$logmessage="Starting battery script"
Write-Host "Starting Battery Script"
while ($Condition -ne 5)
{
    Write-Output $Condition
    $logmessage=$Condition
    $logmessage >> $logfilepath
    Start-Sleep -s 30
    $condition = (Get-WmiObject win32_battery).estimatedChargeRemaining
    
 }
 Write-Host "Shutdown Computer @ 5% battery"
 $logmessage="Shutdown Computer @ 5% battery"
 $logmessage >> $logfilepath
 Stop-Computer -ComputerName localhost