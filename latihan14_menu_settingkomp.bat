@echo off
title Setting My Komputer
:Setting
color b5
cls
echo ----------------------------
echo        SETTING KOMPUTER     
echo ----------------------------
echo    [1] Setting Keyboard
echo    [2] Setting Language
echo    [3] Setting Date
echo    [4] Add user
echo    [5] Sound Control
echo    [6] Open Startup
echo    [7] chrome
echo    [88] Kembali [0] Keluar
echo.
set /p "pilihanmenu=Masukkan Pilihan Menu:"
if %pilihanmenu%==1 goto Keyboard
if %pilihanmenu%==2 goto Language
if %pilihanmenu%==3 goto Date
if %pilihanmenu%==4 goto user
if %pilihanmenu%==5 goto Sound
if %pilihanmenu%==6 goto Startup
if %pilihanmenu%==7 goto chrome
if %pilihanmenu%==88 goto back
if %pilihanmenu%==0 goto exit

:Keyboard
cls
start control Keyboard
goto Setting
pause
:Language
cls
start intl.cpl
goto Setting
pause
:Date
cls
start timedate.cpl
goto Setting
pause
:user
cls
start Netplwiz.exe
goto Setting
pause
:Sound 
cls
start SndVol.exe
goto Setting
pause
:Startup
cls
start msconfig
goto Setting
pause
:chrome
"C:\Program Files\Google\Chrome\Application\chrome.exe"
goto Setting
:exit
exit