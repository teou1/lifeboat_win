# lifeboat_win
Small windows recovery environment and NTFS disk checker system in 97,1 MB. Targeted at Linux users who have no windows anymore but still have some NTFS partitions, as an alternative for the several gigabyte https://www.hirensbootcd.org/ for fixing ntfs errors. I tried to make it under 100 MB, since there are still a lot of machines with such small ESP partitions. At the end i managed to leave 2,9 MB for other boot files (since you still need to boot your linux, right) - a GRUB .efi file is like 320 KB for example. After copying everything, do not forget to enable os_prober in `/etc/default/grub` and `sudo update-grub` so that the new "windows" appear in boot menu.

Since Microsoft does not allow redistribution of RE images, the final product has to be cooked on your own PC. git clone this repo (`git clone https://github.com/teou1/lifeboat_win.git`), go to the cooking directory and run the numbered scripts in that order if you want more hands-on approach, or the run-it-all script. 
This will download bootloader files and original wim image from the Web Archive (ca. 213 MB), unpack the image, strip it down, add some custom scripts and pack again what is left in a 92 MB wim image, which will be put together with the boot files in the "disk_layout" directory. Note that i deliberately did not make a script to copy anything to your ESP - this task is left to you. Just copy everything in "disk_layout" to your EFI partition along the existing files there. You may already have a Microsoft and Boot folders there - backup before replacing. Replacing the Microsoft folder should be safe since you do not have windows anymore and the original files there take a lot of space.

An important dependency is https://wimlib.net/ which will be used for image extraction and packaging on linux as well as `cabextract`. On an arch based system: `sudo pacman -S wimlib cabextract`. You also need about 1.4 GB of disk space (207 MB wim is extracted to about 1200 MB in a temporary directory).

## Running the onetime scripts (prepare the files and new image to copy to ESP)
```
git clone https://github.com/teou1/lifeboat_win.git
cd lifeboat_win
cd cooking_scripts
chmod +x *.sh
cd ..
./cooking_scripts/run_it_all_automatically.sh

```
The resulting files, after downloading an original 200 MB WinRE, unpacking, modifying and repacking it will be in the disk_layout folder, ready to be copied manually to the ESP (usually /boot/efi).

## Screenshots after booting:

<img width="1230" height="783" alt="kbd" src="https://github.com/user-attachments/assets/aa3753bb-658e-485c-ac8c-fa0e3e78a45f" />
---
<img width="1324" height="651" alt="menu" src="https://github.com/user-attachments/assets/1fc5ceea-f00e-41a8-9c13-bbd4ae2f61bd" />
---
<img width="1279" height="733" alt="keys" src="https://github.com/user-attachments/assets/730f2728-4be7-41ac-b1e6-c24611584f5d" />
---
<img width="1267" height="818" alt="readme" src="https://github.com/user-attachments/assets/ad6a9a7d-5cea-4cc0-b1b5-5852cd5d0ad8" />
---
<img width="1319" height="573" alt="volumes" src="https://github.com/user-attachments/assets/13a9430c-b3e5-4716-ad97-0d5c77b942be" />
