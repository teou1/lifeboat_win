wpeinit
reg import x:\config\settings.reg
set PATH=X:\windows\system32;X:\windows;X:\;X:\tools;X:\config;X:\info;
cls
type x:\info\warning.txt
START "Keyboard layout" /max cmd.exe /c x:\config\kbd.cmd
