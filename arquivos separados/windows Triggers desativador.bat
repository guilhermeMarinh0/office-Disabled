schtasks /Change /TN "Microsoft\Office\Office Automatic Updates 2.0" /DISABLE
schtasks /Change /TN "Microsoft\Office\Office ClickToRun Service Monitor" /DISABLE
schtasks /Change /TN "Microsoft\Office\Office Feature Updates" /DISABLE
schtasks /Change /TN "Microsoft\Office\Office Feature Updates Logon" /DISABLE
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentFallBack2016" /DISABLE
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentLogOn2016" /DISABLE
rd /s /q "C:\Windows\System32\Tasks\Microsoft\Office"
pause
