@echo off
:menu
cls
echo Welcome to the Lifeboat_win NANO a.k.a. Winre ntfs checker NANO by Teo, WIM file/scripts ver. 14.11.2026.
echo In this nano edition Regedit, Taskmgr, many terminal tools and 7z are removed so that it fits on a 100 MB ESP
echo https://github.com/teou1/lifeboat_win
echo.
echo This is your launcher, choose an item (type its [number] and hit Enter):
echo ==============================================================================================================
echo.
echo --- APPLICATIONS, TOOLS AND HELP --- 
echo.
echo [01] Key combinations and shortcuts in case you do not have mouse support
echo [02] Display the readme file
echo [03] Chkdsk help [04] FFB (flush file buffers) help [05] RemoveDrive (Safely remove) help
echo [06] Keyboard layout changer KBD.CMD (changes apply to newly opened windows, default is EN-US)
echo [07] New command prompt window without this interactive menu 
echo [08] Notepad 
echo.
echo --- DISK OPERATIONS AND UTILITIES ---
echo.
echo [09] Diskpart list volume to check drive letters
echo      Flush file buffers before unmount like linux sync [10] c: [11] d: [12] e: [13] f: [14] g: [15] h: [16] i:
echo      Safely remove drive (flush the buffers first)     [17] c: [18] d: [19] e: [20] f: [21] g: [22] h: [23] i:
echo      Volume corruption log (fsutil repair enumerate)   [24] c: [25] d: [26] e: [27] f: [28] g: [29] h: [30] i:
echo      Volume corruption state (fsutil repair state)     [31] c: [32] d: [33] e: [34] f: [35] g: [36] h: [37] i:
echo      Check disk readonly - do not fix it (chkdsk)      [38] c: [39] d: [40] e: [41] f: [42] g: [43] h: [44] i:
echo      Check and fix the disk (chkdsk /F)                [45] c: [46] d: [47] e: [48] f: [49] g: [50] h: [51] i:
echo.
echo [52] Shutdown...
echo [53] Reboot...
echo.
echo ==============================================================================================================
set /p op=Enter your choice (type the [number] of the item and hit Enter): 

if /i "%op%"=="01" goto 01
if /i "%op%"=="02" goto 02
if /i "%op%"=="03" goto 03
if /i "%op%"=="04" goto 04
if /i "%op%"=="05" goto 05
if /i "%op%"=="06" goto 06
if /i "%op%"=="07" goto 07
if /i "%op%"=="08" goto 08
if /i "%op%"=="09" goto 09
if /i "%op%"=="10" goto 10
if /i "%op%"=="11" goto 11
if /i "%op%"=="12" goto 12
if /i "%op%"=="13" goto 13
if /i "%op%"=="14" goto 14
if /i "%op%"=="15" goto 15
if /i "%op%"=="16" goto 16
if /i "%op%"=="17" goto 17
if /i "%op%"=="18" goto 18
if /i "%op%"=="19" goto 19
if /i "%op%"=="20" goto 20
if /i "%op%"=="21" goto 21
if /i "%op%"=="22" goto 22
if /i "%op%"=="23" goto 23
if /i "%op%"=="24" goto 24
if /i "%op%"=="25" goto 25
if /i "%op%"=="26" goto 26
if /i "%op%"=="27" goto 27
if /i "%op%"=="28" goto 28
if /i "%op%"=="29" goto 29
if /i "%op%"=="30" goto 30
if /i "%op%"=="31" goto 31
if /i "%op%"=="32" goto 32
if /i "%op%"=="33" goto 33
if /i "%op%"=="34" goto 34
if /i "%op%"=="35" goto 35
if /i "%op%"=="36" goto 36
if /i "%op%"=="37" goto 37
if /i "%op%"=="38" goto 38
if /i "%op%"=="39" goto 39
if /i "%op%"=="40" goto 40
if /i "%op%"=="41" goto 41
if /i "%op%"=="42" goto 42
if /i "%op%"=="43" goto 43
if /i "%op%"=="44" goto 44
if /i "%op%"=="45" goto 45
if /i "%op%"=="46" goto 46
if /i "%op%"=="47" goto 47
if /i "%op%"=="48" goto 48
if /i "%op%"=="49" goto 49
if /i "%op%"=="50" goto 50
if /i "%op%"=="51" goto 51
if /i "%op%"=="52" goto 52
if /i "%op%"=="53" goto 53
goto menu

:01
START "Key Combos" /max cmd.exe /k type x:\info\key_combos.txt
goto menu

:02
START "Readme" /max cmd.exe /k type x:\info\readme.txt
goto menu

:03
START "CHKDSK help" /max cmd.exe /k chkdsk /?
goto menu

:04
START "FFB help" /max cmd.exe /k ffb.exe /?
goto menu

:05
START "RemoveDrive help" /max cmd.exe /k removedrive.exe /?
goto menu

:06
START "Keyboard layout" /max cmd.exe /c x:\config\kbd.cmd
goto menu

:07
START "Terminal" /max cmd.exe /k
goto menu

:08
start /b notepad.exe
goto menu

:09
cls
echo Listing all volumes on all disks ...
diskpart /s x:\config\listvol
echo.
pause
goto menu

:10
cls
echo Flushing buffers ...
echo.
ffb.exe c:
echo.
pause
goto menu

:11
cls
echo Flushing buffers ...
echo.
ffb.exe d:
echo.
pause
goto menu

:12
cls
echo Flushing buffers ...
echo.
ffb.exe e:
echo.
pause
goto menu

:13
cls
echo Flushing buffers ...
echo.
ffb.exe f:
echo.
pause
goto menu

:14
cls
echo Flushing buffers ...
echo.
ffb.exe g:
echo.
pause
goto menu

:15
cls
echo Flushing buffers ...
echo.
ffb.exe h:
echo.
pause
goto menu

:16
cls
echo Flushing buffers ...
echo.
ffb.exe i:
echo.
pause
goto menu

:17
cls
echo Safely removing usb ...
echo.
removedrive.exe c: -L -H -A
echo.
pause
goto menu

:18
cls
echo Safely removing usb ...
echo.
removedrive.exe d: -L -H -A
echo.
pause
goto menu

:19
cls
echo Safely removing usb ...
echo.
removedrive.exe e: -L -H -A
echo.
pause
goto menu

:20
cls
echo Safely removing usb ...
echo.
removedrive.exe f: -L -H -A
echo.
pause
goto menu

:21
cls
echo Safely removing usb ...
echo.
removedrive.exe g: -L -H -A
echo.
pause
goto menu

:22
cls
echo Safely removing usb ...
echo.
removedrive.exe h: -L -H -A
echo.
pause
goto menu

:23
cls
echo Safely removing usb ...
echo.
removedrive.exe i: -L -H -A
echo.
pause
goto menu

:24
cls
echo Enumerating entires of a volume's corruption log ...
echo.
fsutil repair enumerate C:
echo.
pause
goto menu

:25
cls
echo Enumerating entires of a volume's corruption log ...
echo.
fsutil repair enumerate D:
echo.
pause
goto menu

:26
cls
echo Enumerating entires of a volume's corruption log ...
echo.
fsutil repair enumerate E:
echo.
pause
goto menu

:27
cls
echo Enumerating entires of a volume's corruption log ...
echo.
fsutil repair enumerate F:
echo.
pause
goto menu

:28
cls
echo Enumerating entires of a volume's corruption log ...
echo.
fsutil repair enumerate G:
echo.
pause
goto menu

:29
cls
echo Enumerating entires of a volume's corruption log ...
echo.
fsutil repair enumerate H:
echo.
pause
goto menu

:30
cls
echo Enumerating entires of a volume's corruption log ...
echo.
fsutil repair enumerate I:
echo.
pause
goto menu

:31
cls
echo Checking volume's corruption state ...
echo.
fsutil repair state C:
echo.
pause
goto menu

:32
cls
echo Checking volume's corruption state ...
echo.
fsutil repair state D:
echo.
pause
goto menu

:33
cls
echo Checking volume's corruption state ...
echo.
fsutil repair state E:
echo.
pause
goto menu

:34
cls
echo Checking volume's corruption state ...
echo.
fsutil repair state F:
echo.
pause
goto menu

:35
cls
echo Checking volume's corruption state ...
echo.
fsutil repair state G:
echo.
pause
goto menu

:36
cls
echo Checking volume's corruption state ...
echo.
fsutil repair state H:
echo.
pause
goto menu

:37
cls
echo Checking volume's corruption state ...
echo.
fsutil repair state I:
echo.
pause
goto menu

:38
cls
echo Checking disk readonly ...
echo.
chkdsk C:
echo.
pause
goto menu

:39
cls
echo Checking disk readonly ...
echo.
chkdsk D:
echo.
pause
goto menu

:40
cls
echo Checking disk readonly ...
echo.
chkdsk E:
echo.
pause
goto menu

:41
cls
echo Checking disk readonly ...
echo.
chkdsk F:
echo.
pause
goto menu

:42
cls
echo Checking disk readonly ...
echo.
chkdsk G:
echo.
pause
goto menu

:43
cls
echo Checking disk readonly ...
echo.
chkdsk H:
echo.
pause
goto menu

:44
cls
echo Checking disk readonly ...
echo.
chkdsk I:
echo.
pause
goto menu

:45
cls
echo Checking and repairing errors ...
echo.
chkdsk C: /F
echo.
pause
goto menu

:46
cls
echo Checking and repairing errors ...
echo.
chkdsk D: /F
echo.
pause
goto menu

:47
cls
echo Checking and repairing errors ...
echo.
chkdsk E: /F
echo.
pause
goto menu

:48
cls
echo Checking and repairing errors ...
echo.
chkdsk F: /F
echo.
pause
goto menu

:49
cls
echo Checking and repairing errors ...
echo.
chkdsk G: /F
echo.
pause
goto menu

:50
cls
echo Checking and repairing errors ...
echo.
chkdsk H: /F
echo.
pause
goto menu

:51
cls
echo Checking and repairing errors ...
echo.
chkdsk I: /F
echo.
pause
goto menu

:52
echo Asking confirmation to shutdown ...
START "Confirm shutdown" /max cmd.exe /c x:\config\confirm_shutdown.cmd
goto menu

:53
echo Asking confirmation to reboot ...
START "Confirm reboot" /max cmd.exe /c x:\config\confirm_reboot.cmd
goto menu

:prmpt
echo.
