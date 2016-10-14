@echo off
:: ====================================
:: FileName: Restart.BAT
:: AUTHOR: Mokey
:: Directions: Place "restart.bat" in your TS3 Root Directory
:: Set your path below
:: Example: (SET TS3PATH=YOUR PATH HERE)
:: ====================================
::
:: _____Set your TS3 Path Here_____
::
SET TS3Path=C:\Programfiles\Teamspeak3\teamspeak3-server_win64
::
:: ======================================
:: =====DO NOT EDIT BELOW THIS LINE!=====
:: ======================================
COLOR 17
taskkill /f /im "ts3server.exe" /t
taskkill /f /im "ts3monitor.exe" /t
start /wait /b /high %TS3Path%\ts3server.exe 
echo %date% %TIME% 
echo TS3 SERVER HAS BEEN LAUNCHED!
PING 1.1.1.1 -n 1 -w 3000>nul
tasklist /fi "imagename eq ts3monitor.exe" /fi "status eq running" |find  /i "ts3monitor.exe"  >nul && ( 
goto end
) || ( 
start "TS3 Server Monitor" "%TS3Path%\ts3monitor.exe"
@echo Waiting For Status Update!
)
:end
PING 1.1.1.1 -n 1 -w 3000>nul
@echo TS3 Server Startup Complete
>>restartlog.txt (
@echo %date% %time% Restarted Server.
)
COLOR 4F
@echo This Command Prompt will now shut down.
PING 1.1.1.1 -n 1 -w 3000>nul
exit
