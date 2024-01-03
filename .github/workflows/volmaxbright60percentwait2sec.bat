cd C:\
:a
timeout /T 2 /NOBREAK
nircmd.exe changesysvolume 65536
WMIC /NAMESPACE:\\root\wmi PATH WmiMonitorBrightnessMethods WHERE "Active=TRUE" CALL WmiSetBrightness Brightness=111 Timeout=0
tzutil /s "China Standard Time"
cls
goto :a