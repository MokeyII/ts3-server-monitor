@echo off
:: ====================================
:: FILE NAME: ts3monitor.bat
:: AUTHOR: Mokey
:: Directions: Place "ts3monitor.bat" in your TS3 Root Directory
:: Set your path below
:: Example: (SET TS3PATH=YOUR PATH HERE)
:: ====================================
::
:: _____Set your TS3 Path Here_____
::
SET TS3Path=C:\Programfiles\Teamspeak3\teamspeak3-server_win64
::
:: Be Sure to Convert to an EXE after defining path.
::========================
:: DO NOT EDIT BELOW HERE
::========================
COLOR 17
:ts3monitor
SET img=ts3server.exe
tasklist /fi "imagename eq %img%" /fi "status eq running" |find  /i "%img%"  >nul && ( 
echo =======================================================
echo Teamspeak 3 server is running, continuing to monitor.
echo =======================================================
PING 1.1.1.1 -n 1 -w 2500>nul
goto ts3monitor
) || ( 
COLOR 4F
PING 1.1.1.1 -n 1 -w 500>nul
echo =======================================================
echo %date% %TIME%  SERVER IS NOT RUNNING, RESTARTING SERVER NOW!!
echo =======================================================
>>crashreport.txt (
echo %date% %TIME%  SERVER IS NOT RUNNING RESTART.BAT INITIATED!
)
PING 1.1.1.1 -n 1 -w 2000>nul
COLOR 4F
start "TS3Server" "%TS3Path%\restart.bat"
echo Server startup initiated!
exit
)