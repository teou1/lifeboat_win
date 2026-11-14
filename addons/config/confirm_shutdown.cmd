@echo off
cls
echo.
echo Choosing Shutdown will immediately do it. Make sure all disk checks are finished!
echo Flush the file buffers and safely remove drives if you copied to usb!
echo Otherwise damage to the filesystem and loss of data may occur.
echo.
set /p confirm=Are you sure you want to shutdown? Type 1 (one) to confirm, any other key cancels: 

if /i "%confirm%"=="1" goto doitnow
goto backtosafety

:doitnow
wpeutil.exe shutdown

:backtosafety
echo Aborting...
