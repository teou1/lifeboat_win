Welcome to the Lifeboat_win a.k.a. Winre ntfs checker by Teo!
https://github.com/teou1/lifeboat_win

The only purpose of this project is to help linux users that have deleted windows but still have ntfs
partitions to save their data and check and repair the filesystem with the Microsoft tool chkdsk.
It also allows you to archive and copy files to an usb drive.
Based on the first edition of Win10, it will be compatible and safe to use for many years to come. 

Keyboard layout changes are only valid for newly started command windows.
Type "start /max cmd.exe" to open new command window with the chosen layout,
"x:\config\kbd.cmd" reruns the keyboard choice menu.
Use "Alt+Tab" to switch windows. 
A summary of the keyboard shortcuts is in the file x:\info\key_combos.txt

"Alt+Space" opens menu, where you can select, copy, paste, scroll lock if you want to review
previous terminal output, like a long checkdisk report. You can also change font size. Use Tab and
arrows to navigate. In the GUI apps there is "Alt+F" as a shortcut for the application menu and
"Shift+10" opens the context menu on an item. Submenus are marked with "8" at the end.

You can use usb drives if needed. Avoid modifying nonenglish named files and folders - 
the support for unicode is stripped, copy will error out trying to copy them, but you can still
copy through notepad open dialog or use robocopy from the terminal to copy the parent folder. 

Do not forget to safely remove usb drives after use - for this, you have two options:
diskpart, list volume, select volume XX, remove all dismount, exit. Then disconnect the usb.
Alternatively use "RemoveDrive.exe".

Besides that, you have "diskpart", list volume" and "chkdsk /?" or "chkdsk c: /F"  (if the volume is C)
as available tools intended to be used. Most of the network stack is stripped - pretty much everything i
left intact are the storage and usb drivers and the libraries for checkdisk and diskpart, as well as
notepad and the ability to change keyboard layout with focus on the latin layouts.

You can read this message again with "type x:\info\readme.txt"
This help page is deliberately opened in a new window, you can close it to return to menu or just
leave it open for future reference and return to menu with Alt+tab.
