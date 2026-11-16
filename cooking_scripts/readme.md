The windows boot procedure for a Windows recovery environment ram image goes like this:
The boot manager $ESP/EFI/Microsoft/Boot/bootmgfw.efi reads /EFI/Microsoft/Boot/BCD where the config is stored.
Among other things it points to $ESP/Boot/boot.sdi. This is an empty disk image that then is loaded in RAM
and inside is unpacked the $ESP/sources/boot.wim RAMdisk and the boot loader in the windows directory takes over.

A copy of the bootmgfw.efi is found inside the boot.wim. So the only 2 other files needed to boot on an efi system
from the local hard disk are the sdi image and a BCD store containing the pointer to it. 

In the cooking scripts i did hardcode some download links from archive.org. In case those disappear for some reason,
you have to find any Win10 RE iso, view all files and click on the "view contents" on the ISO file. For example here
is an alternative source
https://ia801500.us.archive.org/view_archive.php?archive=/27/items/windows-10-1507-home-and-pro/Win10_EnglishInternational_x64.iso
look for boot.sdi, it should be 3170304 bytes. If there is such file in the iso, take it with the corresponding BCD
from the same ISO ! This file would be anywhere between 16k and 256k, does not matter as long as it is from the same iso.

About the boot.wim (NOT install.wim): i deliberately chose the oldest possible Win10 version, 1507 (10240) so that there
is less to cut (i started with win8, but the chkdsk there is older and lacks some features). 
If you cannot find this version anymore, you can try another wim from a similar version, but the you are on your own
with the slimming down. Use the diff file as an inspiration. Up to about 150 MB it is not that hard (backups, languages).

Note that i did not make any script to automatically copy the ready files to the ESP. I want you to take the responsibility yourself, mount /boot/efi as root and look at the structure, possibly check space, backup files, etc. There are too many different configurations possibilities to take into account all variables in a script.
One more thing: the typical user of this as i imagine it is someone with a linux installation or two with grub or refind bootloader (for testing in a VM i recommend refind - without themes and drivers it is a 320 k single file, needing no config just put it as EFI/boot/bootx64.efi). Of course, you can add the new "Windows" to the firmware boot menu with `sudo efibootmgr -c -L "WinRE" -l '\EFI\Microsoft\Boot\grubx64.efi'`. But i recommend just to use the GRUB bootloader. Edit `/etc/default/grub` to uncomment `GRUB_DISABLE_OS_PROBER=false` and run `sudo update-grub`. A new windows entry will be added to the boot menu.
