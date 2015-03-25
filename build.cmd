REM 7z.exe a commandline compression app from 7-zip
move /y media media_org
del com_alarmhistory.zip
mkdir admin
mkdir site
mkdir media
xcopy /d /y /s media_org\com_alarmhistory\*.* media\*.*
copy administrator\components\com_alarmhistory\alarmhistory.xml alarmhistory.xml
xcopy /d /y /s administrator\components\com_alarmhistory\*.* admin\*.*
xcopy /d /y /s components\com_alarmhistory\*.* site\*.*
del admin\alarmhistory.xml
..\7z a -Y com_alarmhistory.zip media
rmdir /S /Q media
..\7z a -Y com_alarmhistory.zip *.xml
..\7z a -Y com_alarmhistory.zip admin
..\7z a -Y com_alarmhistory.zip site
del alarmhistory.xml
rmdir /S /Q admin
rmdir /S /Q site
move /Y media_org media

