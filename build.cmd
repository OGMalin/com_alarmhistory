REM 7z.exe a commandline compression app from 7-zip
del com_alarmhistory.zip
move admin\alarmhistory.xml alarmhistory.xml
..\7z a -Y com_alarmhistory.zip *.xml
..\7z a -Y com_alarmhistory.zip admin
..\7z a -Y com_alarmhistory.zip site
..\7z a -Y com_alarmhistory.zip media
move alarmhistory.xml admin\alarmhistory.xml

