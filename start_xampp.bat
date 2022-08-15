@ECHO OFF
CLS
ECHO 1.New Xampp
ECHO 2.Old Xampp
ECHO 3.Close Xampp
ECHO.

CHOICE /C 123 /M "Enter your choice:"

IF ERRORLEVEL 3 GOTO Close
IF ERRORLEVEL 2 GOTO Old
IF ERRORLEVEL 1 GOTO New

:Close
D:
cd D:\Installation\xampp
call apache_stop.bat
call mysql_stop.bat
cd D:\Installation\xampp_old
call apache_stop.bat
call mysql_stop.bat
timeout 5 > NUL
GOTO End

:Old
D:
cd D:\Installation\xampp
call apache_stop.bat
call mysql_stop.bat
cd D:\Installation\xampp_old
call apache_stop.bat
call mysql_stop.bat
timeout 5 > NUL
cd D:\Installation\xampp_old
start xampp-control.exe
timeout 5 > NUL
GOTO End

:New
D:
cd D:\Installation\xampp
call apache_stop.bat
call mysql_stop.bat
cd D:\Installation\xampp_old
call apache_stop.bat
call mysql_stop.bat
timeout 5 > NUL
cd D:\Installation\xampp
start xampp-control.exe
timeout 5 > NUL
GOTO End

:Ends