@echo off
color 0e 
echo  -------------------------------------------                 
echo     0000000000     0         0   00                               
echo     0              0         0   00                                 
echo     0              0         0                               
echo     0              0         0   00    
echo     0    0000000   0         0   00                                     
echo     0        0     0         0   00                                      
echo     0000000000     00000000000   00                                      
echo --------------------------------------------
echo		© - Guilherme Marinho
echo --------------------------------------------
pause
cls
@echo off
color 0a
echo.
echo.
echo Selecione uma opcao:
echo.
echo 1 - Parar e desabilitar o serviço "ose"
echo 2 - Importar políticas de firewall do Office
echo 3 - Desativar disparadores do Office
echo 4 - Executar todas as opções
echo.
echo. OBS: EXECUTE COMO ADMINISTRADOR!
echo.
echo.
choice /c 1234567890 /n
if errorlevel 4 goto run_all
if errorlevel 3 goto disable_office_tasks
if errorlevel 2 goto import_firewall_policies
if errorlevel 1 goto disable_ose

:disable_ose
net stop "ose"
sc config "ose" start= disabled
net stop "ose"
sc delete "ose"
pause
goto end

:import_firewall_policies
netsh advfirewall import "D:\Desativadores\Office\SubsScripts\firewall.wfw"
netsh advfirewall import "E:\Desativadores\Office\SubsScripts\firewall.wfw"
netsh advfirewall import "F:\Desativadores\Office\SubsScripts\firewall.wfw"
netsh advfirewall import "G:\Desativadores\Office\SubsScripts\firewall.wfw"
pause
goto end

:disable_office_tasks
schtasks /Change /TN "Microsoft\Office\Office Automatic Updates 2.0" /DISABLE
schtasks /Change /TN "Microsoft\Office\Office ClickToRun Service Monitor" /DISABLE
schtasks /Change /TN "Microsoft\Office\Office Feature Updates" /DISABLE
schtasks /Change /TN "Microsoft\Office\Office Feature Updates Logon" /DISABLE
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentFallBack2016" /DISABLE
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentLogOn2016" /DISABLE
rd /s /q "C:\Windows\System32\Tasks\Microsoft\Office"
pause
goto end

:run_all
echo.
echo Parar e desabilitar o serviço "ose"
echo.
net stop "ose"
sc config "ose" start= disabled
net stop "ose"
sc delete "ose"
echo.
echo ---------------
echo.
echo Importar políticas de firewall do Office
echo.
netsh advfirewall import "D:\Desativadores\Office\SubsScripts\firewall.wfw"
netsh advfirewall import "E:\Desativadores\Office\SubsScripts\firewall.wfw"
netsh advfirewall import "F:\Desativadores\Office\SubsScripts\firewall.wfw"
netsh advfirewall import "G:\Desativadores\Office\SubsScripts\firewall.wfw"
echo.
echo ---------------
echo.
echo Desativar disparadores do Office
echo.
schtasks /Change /TN "Microsoft\Office\Office Automatic Updates 2.0" /DISABLE
schtasks /Change /TN "Microsoft\Office\Office ClickToRun Service Monitor" /DISABLE
schtasks /Change /TN "Microsoft\Office\Office Feature Updates" /DISABLE
schtasks /Change /TN "Microsoft\Office\Office Feature Updates Logon" /DISABLE
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentFallBack2016" /DISABLE
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentLogOn2016" /DISABLE
rd /s /q "C:\Windows\System32\Tasks\Microsoft\Office"
pause
goto end