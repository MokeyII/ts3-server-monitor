====================================
FileName: ReadMe.txt
AUTHOR: Mokey
Directions: Follow the Instructions Below
====================================

Place All of the contents of this folder into your Team Speak 3 Server Root Folder
	Example: C:\Programfiles\Teamspeak3\teamspeak3-server_win64\

EXTRACT "extract.EXE" that includes "Convert.EXE" and "ts3monitor.bat"

READ		IF YOUR CURENT PATH MATCHES THE ABOVE EXAMPLE, LAUNCH "ts3monitor.exe"
			OTHERWISE
			continue with the below instructions
		
DELETE ts3monitor.exe
	
RIGHT CLICK and EDIT "restart.bat" OR open it in a text editor such as notepad++

Under the line that says "_____Set your TS3 Path Here_____" Edit "SET TS3Path=C:\TS3\teamspeak3-server_win64" to reflect your TS3 Server Root Directory
	example: SET TS3Path=C:\Programfiles\Teamspeak3\teamspeak3-server_win64
		Make sure you DO NOT add a "\" at the end of the folder path.
		
SAVE restart.bat

Now Right click "ts3monitor.exe

Under the line that says "_____Set your TS3 Path Here_____" Edit "SET TS3Path=C:\TS3\teamspeak3-server_win64" to reflect your TS3 Server Root Directory
	example: SET TS3Path=C:\Programfiles\Teamspeak3\teamspeak3-server_win64
		Make sure you DO NOT add a "\" at the end of the folder path.
		
SAVE ts3monitor.bat

EXIT your Text Editor

OPEN "Convert.exe" 

FOR "Batch file:" Click the "..." button on the right side, select the restart.bat file you save in your server's root folder.
	example: C:\Programfiles\Teamspeak3\teamspeak3-server_win64\ts3monitor.bat

FOR "Save As:" button on the right side, select the restart.bat file you save in your server's root folder.
	example: C:\Programfiles\Teamspeak3\teamspeak3-server_win64\ts3monitor.exe
	
LAUNCH ts3monitor.exe