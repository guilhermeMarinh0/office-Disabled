
! --wf.msc--

! importando o arquivo Firewall Security Politics for Office Pack.wfw no wf.msc

netsh advfirewall import "D:\Desativadores\Office\Firewall Security Politics for Office Pack.wfw"

! taskschd.msc
! services.msc
! cmd -> sc delete ose, wuauserv, adobearmservice 
! msconfig
! gpedit.msc

echo Press any key to continue...