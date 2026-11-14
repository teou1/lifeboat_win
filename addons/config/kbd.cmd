@echo off
cls
:menu
echo Keyboard layout - type the number of the chosen layout, it will be applied to a new terminal window.
echo Shown are only latin layouts because you may need to type windows commands. 
echo Keyboard layout does not really matter, all basic functions are contolled with numbers.
echo You will want to change it if you want to rename files, change registry or take notes, for example.
echo Note that international support is limited, do not copy a directory or file with non-latin 
echo characters directly (you cannot) but instead the parent directory with the robocopy command.
echo ===================================================================================================
echo [01] Albanian                   [30] Hungarian                  [59] Scottish Gaelic               
echo [02] Azeri Latin                [31] Hungarian 101-key          [60] Serbian (Latin)               
echo [03] Belgian (Comma)            [32] Icelandic                  [61] Sesotho sa Leboa              
echo [04] Belgian (Period)           [33] Igbo                       [62] Setswana                      
echo [05] Bulgarian (Latin)          [34] Inuktitut - Latin          [63] Sinhala                       
echo [06] Canadian French            [35] Inuktitut - Naqittaut      [64] Slovak                        
echo [07] Canadian French (Legacy)   [36] Irish                      [65] Slovak (QWERTY)               
echo [08] Canadian Multilingual Std. [37] Italian                    [66] Slovenian                     
echo [09] Chinese (Simplified) - US  [38] Italian (142)              [67] Spanish                       
echo [10] Croatian                   [39] Latin American             [68] Spanish Variation             
echo [11] Czech                      [40] Latvian                    [69] Swedish                       
echo [12] Czech Programmers          [41] Latvian (QWERTY)           [70] Swedish with Sami             
echo [13] Czech (QWERTY)             [42] Lithuanian                 [71] Swiss French                  
echo [14] Danish                     [43] Lithuanian IBM             [72] Swiss German                  
echo [15] Dutch                      [44] Lithuanian Standard        [73] Turkish F                     
echo [16] English (India)            [45] Luxembourgish              [74] Turkish Q                     
echo [17] Estonian                   [46] Maltese 47-Key             [75] Turkmen                       
echo [18] Faeroese                   [47] Maltese 48-Key             [76] US                            
echo [19] Finnish                    [48] Maori                      [77] US Eng. IBM Arabic 238_L      
echo [20] Finnish with Sami          [49] Norwegian                  [78] United Kingdom                
echo [21] French                     [50] Norwegian with Sami        [79] United States-Dvorak          
echo [22] German                     [51] Polish (214)               [80] US Dvorak (Left Hand)         
echo [23] German (IBM)               [52] Polish (Programmers)       [81] US Dvorak (Right Hand)        
echo [24] Greenlandic                [53] Portuguese                 [82] US-International              
echo [25] Greek (220) Latin          [54] Portuguese (Brazil ABNT)   [83] Wolof                         
echo [26] Greek (319) Latin          [55] Romanian (Legacy)          [84] Yoruba                        
echo [27] Greek Latin                [56] Romanian (Standard)                                           
echo [28] Hausa                      [57] Sami Extended Fin.-Swed.        
echo [29] Hawaiian                   [58] Sami Extended Norway       [Enter] Close and leave current      
echo ===================================================================================================
set /p ch=Choose an option (01-84, any other input cancels, default layout is EN-US): 

if /i "%ch%"=="01" goto 01
if /i "%ch%"=="02" goto 02
if /i "%ch%"=="03" goto 03
if /i "%ch%"=="04" goto 04
if /i "%ch%"=="05" goto 05
if /i "%ch%"=="06" goto 06
if /i "%ch%"=="07" goto 07
if /i "%ch%"=="08" goto 08
if /i "%ch%"=="09" goto 09
if /i "%ch%"=="10" goto 10
if /i "%ch%"=="11" goto 11
if /i "%ch%"=="12" goto 12
if /i "%ch%"=="13" goto 13
if /i "%ch%"=="14" goto 14
if /i "%ch%"=="15" goto 15
if /i "%ch%"=="16" goto 16
if /i "%ch%"=="17" goto 17
if /i "%ch%"=="18" goto 18
if /i "%ch%"=="19" goto 19
if /i "%ch%"=="20" goto 20
if /i "%ch%"=="21" goto 21
if /i "%ch%"=="22" goto 22
if /i "%ch%"=="23" goto 23
if /i "%ch%"=="24" goto 24
if /i "%ch%"=="25" goto 25
if /i "%ch%"=="26" goto 26
if /i "%ch%"=="27" goto 27
if /i "%ch%"=="28" goto 28
if /i "%ch%"=="29" goto 29
if /i "%ch%"=="30" goto 30
if /i "%ch%"=="31" goto 31
if /i "%ch%"=="32" goto 32
if /i "%ch%"=="33" goto 33
if /i "%ch%"=="34" goto 34
if /i "%ch%"=="35" goto 35
if /i "%ch%"=="36" goto 36
if /i "%ch%"=="37" goto 37
if /i "%ch%"=="38" goto 38
if /i "%ch%"=="39" goto 39
if /i "%ch%"=="40" goto 40
if /i "%ch%"=="41" goto 41
if /i "%ch%"=="42" goto 42
if /i "%ch%"=="43" goto 43
if /i "%ch%"=="44" goto 44
if /i "%ch%"=="45" goto 45
if /i "%ch%"=="46" goto 46
if /i "%ch%"=="47" goto 47
if /i "%ch%"=="48" goto 48
if /i "%ch%"=="49" goto 49
if /i "%ch%"=="50" goto 50
if /i "%ch%"=="51" goto 51
if /i "%ch%"=="52" goto 52
if /i "%ch%"=="53" goto 53
if /i "%ch%"=="54" goto 54
if /i "%ch%"=="55" goto 55
if /i "%ch%"=="56" goto 56
if /i "%ch%"=="57" goto 57
if /i "%ch%"=="58" goto 58
if /i "%ch%"=="59" goto 59
if /i "%ch%"=="60" goto 60
if /i "%ch%"=="61" goto 61
if /i "%ch%"=="62" goto 62
if /i "%ch%"=="63" goto 63
if /i "%ch%"=="64" goto 64
if /i "%ch%"=="65" goto 65
if /i "%ch%"=="66" goto 66
if /i "%ch%"=="67" goto 67
if /i "%ch%"=="68" goto 68
if /i "%ch%"=="69" goto 69
if /i "%ch%"=="70" goto 70
if /i "%ch%"=="71" goto 71
if /i "%ch%"=="72" goto 72
if /i "%ch%"=="73" goto 73
if /i "%ch%"=="74" goto 74
if /i "%ch%"=="75" goto 75
if /i "%ch%"=="76" goto 76
if /i "%ch%"=="77" goto 77
if /i "%ch%"=="78" goto 78
if /i "%ch%"=="79" goto 79
if /i "%ch%"=="80" goto 80
if /i "%ch%"=="81" goto 81
if /i "%ch%"=="82" goto 82
if /i "%ch%"=="83" goto 83
if /i "%ch%"=="84" goto 84

goto default

:01
echo Configuring layout: Albanian ...
wpeutil.exe SetKeyboardLayout 0409:0000041c
goto success

:02
echo Configuring layout: Azeri Latin ...
wpeutil.exe SetKeyboardLayout 0409:0000042c
goto success

:03
echo Configuring layout: Belgian (Comma) ...
wpeutil.exe SetKeyboardLayout 0409:0001080c
goto success

:04
echo Configuring layout: Belgian (Period) ...
wpeutil.exe SetKeyboardLayout 0409:00000813
goto success

:05
echo Configuring layout: Bulgarian (Latin) ...
wpeutil.exe SetKeyboardLayout 0409:00010402
goto success

:06
echo Configuring layout: Canadian French ...
wpeutil.exe SetKeyboardLayout 0409:00001009
goto success

:07
echo Configuring layout: Canadian French (Legacy) ...
wpeutil.exe SetKeyboardLayout 0409:00000c0c
goto success

:08
echo Configuring layout: Canadian Multilingual Standard ...
wpeutil.exe SetKeyboardLayout 0409:00011009
goto success

:09
echo Configuring layout: Chinese (Simplified) - US ...
wpeutil.exe SetKeyboardLayout 0409:00000804
goto success

:10
echo Configuring layout: Croatian ...
wpeutil.exe SetKeyboardLayout 0409:0000041a
goto success

:11
echo Configuring layout: Czech ...
wpeutil.exe SetKeyboardLayout 0409:00000405
goto success

:12
echo Configuring layout: Czech Programmers ...
wpeutil.exe SetKeyboardLayout 0409:00020405
goto success

:13
echo Configuring layout: Czech (QWERTY) ...
wpeutil.exe SetKeyboardLayout 0409:00010405
goto success

:14
echo Configuring layout: Danish ...
wpeutil.exe SetKeyboardLayout 0409:00000406
goto success

:15
echo Configuring layout: Dutch ...
wpeutil.exe SetKeyboardLayout 0409:00000413
goto success

:16
echo Configuring layout: English (India) ...
wpeutil.exe SetKeyboardLayout 0409:00004009
goto success

:17
echo Configuring layout: Estonian ...
wpeutil.exe SetKeyboardLayout 0409:00000425
goto success

:18
echo Configuring layout: Faeroese ...
wpeutil.exe SetKeyboardLayout 0409:00000438
goto success

:19
echo Configuring layout: Finnish ...
wpeutil.exe SetKeyboardLayout 0409:0000040b
goto success

:20
echo Configuring layout: Finnish with Sami ...
wpeutil.exe SetKeyboardLayout 0409:0001083b
goto success

:21
echo Configuring layout: French ...
wpeutil.exe SetKeyboardLayout 0409:0000040c
goto success

:22
echo Configuring layout: German ...
wpeutil.exe SetKeyboardLayout 0409:00000407
goto success

:23
echo Configuring layout: German (IBM) ...
wpeutil.exe SetKeyboardLayout 0409:00010407
goto success

:24
echo Configuring layout: Greenlandic ...
wpeutil.exe SetKeyboardLayout 0409:0000046f
goto success

:25
echo Configuring layout: Greek (220) Latin ...
wpeutil.exe SetKeyboardLayout 0409:00030408
goto success

:26
echo Configuring layout: Greek (319) Latin ...
wpeutil.exe SetKeyboardLayout 0409:00040408
goto success

:27
echo Configuring layout: Greek Latin ...
wpeutil.exe SetKeyboardLayout 0409:00050408
goto success

:28
echo Configuring layout: Hausa ...
wpeutil.exe SetKeyboardLayout 0409:00000468
goto success

:29
echo Configuring layout: Hawaiian ...
wpeutil.exe SetKeyboardLayout 0409:00000475
goto success

:30
echo Configuring layout: Hungarian ...
wpeutil.exe SetKeyboardLayout 0409:0000040e
goto success

:31
echo Configuring layout: Hungarian 101-key ...
wpeutil.exe SetKeyboardLayout 0409:0001040e
goto success

:32
echo Configuring layout: Icelandic ...
wpeutil.exe SetKeyboardLayout 0409:0000040f
goto success

:33
echo Configuring layout: Igbo ...
wpeutil.exe SetKeyboardLayout 0409:00000470
goto success

:34
echo Configuring layout: Inuktitut - Latin ...
wpeutil.exe SetKeyboardLayout 0409:0000085d
goto success

:35
echo Configuring layout: Inuktitut - Naqittaut ...
wpeutil.exe SetKeyboardLayout 0409:0001045d
goto success

:36
echo Configuring layout: Irish ...
wpeutil.exe SetKeyboardLayout 0409:00001809
goto success

:37
echo Configuring layout: Italian ...
wpeutil.exe SetKeyboardLayout 0409:00000410
goto success

:38
echo Configuring layout: Italian (142) ...
wpeutil.exe SetKeyboardLayout 0409:00010410
goto success

:39
echo Configuring layout: Latin American ...
wpeutil.exe SetKeyboardLayout 0409:0000080a
goto success

:40
echo Configuring layout: Latvian ...
wpeutil.exe SetKeyboardLayout 0409:00000426
goto success

:41
echo Configuring layout: Latvian (QWERTY) ...
wpeutil.exe SetKeyboardLayout 0409:00010426
goto success

:42
echo Configuring layout: Lithuanian ...
wpeutil.exe SetKeyboardLayout 0409:00010427
goto success

:43
echo Configuring layout: Lithuanian IBM ...
wpeutil.exe SetKeyboardLayout 0409:00000427
goto success

:44
echo Configuring layout: Lithuanian Standard ...
wpeutil.exe SetKeyboardLayout 0409:00020427
goto success

:45
echo Configuring layout: Luxembourgish ...
wpeutil.exe SetKeyboardLayout 0409:0000046e
goto success

:46
echo Configuring layout: Maltese 47-Key ...
wpeutil.exe SetKeyboardLayout 0409:0000043a
goto success

:47
echo Configuring layout: Maltese 48-Key ...
wpeutil.exe SetKeyboardLayout 0409:0001043a
goto success

:48
echo Configuring layout: Maori ...
wpeutil.exe SetKeyboardLayout 0409:00000481
goto success

:49
echo Configuring layout: Norwegian ...
wpeutil.exe SetKeyboardLayout 0409:00000414
goto success

:50
echo Configuring layout: Norwegian with Sami ...
wpeutil.exe SetKeyboardLayout 0409:0000043b
goto success

:51
echo Configuring layout: Polish (214) ...
wpeutil.exe SetKeyboardLayout 0409:00010415
goto success

:52
echo Configuring layout: Polish (Programmers) ...
wpeutil.exe SetKeyboardLayout 0409:00000415
goto success

:53
echo Configuring layout: Portuguese ...
wpeutil.exe SetKeyboardLayout 0409:00000816
goto success

:54
echo Configuring layout: Portuguese (Brazil ABNT) ...
wpeutil.exe SetKeyboardLayout 0409:00000416
goto success

:55
echo Configuring layout: Romanian (Legacy) ...
wpeutil.exe SetKeyboardLayout 0409:00000418
goto success

:56
echo Configuring layout: Romanian (Standard) ...
wpeutil.exe SetKeyboardLayout 0409:00010418
goto success

:57
echo Configuring layout: Sami Extended Finland-Sweden ...
wpeutil.exe SetKeyboardLayout 0409:0002083b
goto success

:58
echo Configuring layout: Sami Extended Norway ...
wpeutil.exe SetKeyboardLayout 0409:0001043b
goto success

:59
echo Configuring layout: Scottish Gaelic ...
wpeutil.exe SetKeyboardLayout 0409:00011809
goto success

:60
echo Configuring layout: Serbian (Latin) ...
wpeutil.exe SetKeyboardLayout 0409:0000081a
goto success

:61
echo Configuring layout: Sesotho sa Leboa ...
wpeutil.exe SetKeyboardLayout 0409:0000046c
goto success

:62
echo Configuring layout: Setswana ...
wpeutil.exe SetKeyboardLayout 0409:00000432
goto success

:63
echo Configuring layout: Sinhala ...
wpeutil.exe SetKeyboardLayout 0409:0000045b
goto success

:64
echo Configuring layout: Slovak ...
wpeutil.exe SetKeyboardLayout 0409:0000041b
goto success

:65
echo Configuring layout: Slovak (QWERTY) ...
wpeutil.exe SetKeyboardLayout 0409:0001041b
goto success

:66
echo Configuring layout: Slovenian ...
wpeutil.exe SetKeyboardLayout 0409:00000424
goto success

:67
echo Configuring layout: Spanish ...
wpeutil.exe SetKeyboardLayout 0409:0000040a
goto success

:68
echo Configuring layout: Spanish Variation ...
wpeutil.exe SetKeyboardLayout 0409:0001040a
goto success

:69
echo Configuring layout: Swedish ...
wpeutil.exe SetKeyboardLayout 0409:0000041d
goto success

:70
echo Configuring layout: Swedish with Sami ...
wpeutil.exe SetKeyboardLayout 0409:0000083b
goto success

:71
echo Configuring layout: Swiss French ...
wpeutil.exe SetKeyboardLayout 0409:0000100c
goto success

:72
echo Configuring layout: Swiss German ...
wpeutil.exe SetKeyboardLayout 0409:00000807
goto success

:73
echo Configuring layout: Turkish F ...
wpeutil.exe SetKeyboardLayout 0409:0001041f
goto success

:74
echo Configuring layout: Turkish Q ...
wpeutil.exe SetKeyboardLayout 0409:0000041f
goto success

:75
echo Configuring layout: Turkmen ...
wpeutil.exe SetKeyboardLayout 0409:00000442
goto success

:76
echo Configuring layout: US ...
wpeutil.exe SetKeyboardLayout 0409:00000409
goto success

:77
echo Configuring layout: US English Table for IBM Arabic 238_L ...
wpeutil.exe SetKeyboardLayout 0409:00050409
goto success

:78
echo Configuring layout: United Kingdom ...
wpeutil.exe SetKeyboardLayout 0409:00000809
goto success

:79
echo Configuring layout: United States-Dvorak ...
wpeutil.exe SetKeyboardLayout 0409:00010409
goto success

:80
echo Configuring layout: United States-Dvorak for left hand ...
wpeutil.exe SetKeyboardLayout 0409:00030409
goto success

:81
echo Configuring layout: United States-Dvorak for right hand ...
wpeutil.exe SetKeyboardLayout 0409:00040409
goto success

:82
echo Configuring layout: United States-International ...
wpeutil.exe SetKeyboardLayout 0409:00020409
goto success

:83
echo Configuring layout: Wolof ...
wpeutil.exe SetKeyboardLayout 0409:00000488
goto success

:84
echo Configuring layout: Yoruba ...
wpeutil.exe SetKeyboardLayout 0409:0000046a
goto success

:default
echo Restoring default layout En-Us...
wpeutil.exe SetKeyboardLayout 0409:00000409
goto success

:invalid
echo.
echo [-] Invalid selection! Please try again.
echo.
pause
cls
goto menu

:success
echo.
echo [+] Keyboard layout changed successfully!
echo Starting new shell with the chosen layout...
closewindow.exe -text="*MENU*" -count=99
START "MENU" /max cmd.exe /k x:\tools\menu.cmd
closewindow.exe -text="*Keyboard layout*" -count=99
echo.
echo.

:prmpt
echo.
