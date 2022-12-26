net stop "ose"
sc config "ose" start= disabled
net stop "ose"
sc delete "ose"
pause