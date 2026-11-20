#!/bin/bash
echo ""
echo "Running all scripts..."
echo ""
echo "Checking dependencies..."
echo ""
./cooking_scripts/00_dependency_check.sh 
if [ $? -eq 0 ]; then echo "Success!"; echo ""; else echo ""; echo "ERROR! Aborting ..."; echo ""; exit; fi
sleep 0.5
echo "01. Downloading files (bootfiles and the original .wim image)..."
echo ""
sleep 0.5
./cooking_scripts/01_download_files.sh
if [ $? -eq 0 ]; then echo "Success!"; echo ""; else echo ""; echo "ERROR! Aborting ..."; echo ""; exit; fi
sleep 0.5
echo "02. Checking for file corruption of the downloaded files..."
echo ""
sleep 0.5
./cooking_scripts/02_hashcheck.sh
if [ $? -eq 0 ]; then echo "Success!"; echo ""; else echo ""; echo "ERROR! Aborting ..."; echo ""; exit; fi
sleep 0.5
echo "03. Extracting the original image that will be modified..."
echo ""
sleep 0.5
./cooking_scripts/03_wimapply.sh
if [ $? -eq 0 ]; then echo "Success!"; echo ""; else echo ""; echo "ERROR! Aborting ..."; echo ""; exit; fi
sleep 0.5
echo "04. Copyng the bootmgfw.efi to disk_layout..."
echo ""
sleep 0.5
./cooking_scripts/04_efi_copy.sh
if [ $? -eq 0 ]; then echo "Success!"; echo ""; else echo ""; echo "ERROR! Aborting ..."; echo ""; exit; fi
sleep 0.5
echo "05. Deleting a lot of stuff from the extracted image to make it smaller..."
echo ""
sleep 0.5
./cooking_scripts/05_slimdown.sh
if [ $? -eq 0 ]; then echo "Success!"; echo ""; else echo ""; echo "ERROR! Aborting ..."; echo ""; exit; fi
sleep 0.5
echo "06. Adding some custom scripts for the comfortable use of the environment..."
echo ""
sleep 0.5
./cooking_scripts/06_customize.sh
if [ $? -eq 0 ]; then echo "Success!"; echo ""; else echo ""; echo "ERROR! Aborting ..."; echo ""; exit; fi
sleep 0.5
echo "07. Repackaging the .wim image after the changes and moving to disk_layout"
echo ""
sleep 0.5
./cooking_scripts/07_wimcapture.sh
if [ $? -eq 0 ]; then echo "Success!"; echo ""; else echo ""; echo "ERROR! Aborting ..."; echo ""; exit; fi
echo "==========================================================="
echo ""
echo "You should now have the following files (ca. 97 MB total), ready to be copied"
echo "to the ESP and the folder disk_layout represents the root of the ESP partition:"
echo ""
echo "disk_layout/EFI/Microsoft/Boot/bootmgfw.efi"
echo "disk_layout/EFI/Microsoft/Boot/BCD"
echo "disk_layout/Boot/boot.sdi"
echo "disk_layout/sources/boot.wim"
echo ""
echo "Note that at the end the extracted cache in the working directory is not deleted,"
echo "in case you further want to customize anything. If not, just delete the working_dir"
echo "It is also a good idea to backup the folders which contents you will replace if they"
echo "already exist, like EFI/Microsoft"
echo "Now edit /etc/default/grub to uncomment GRUB_DISABLE_OS_PROBER=false and run sudo update-grub" 
echo "A new windows entry will be added to the boot menu."
echo ""
