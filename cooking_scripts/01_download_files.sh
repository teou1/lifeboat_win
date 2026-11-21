#!/bin/bash

echo "Downloading boot.sdi and placing it in the disk_layout..."
echo ""
wget -O boot.sdi https://archive.org/download/wpe-64/WPE64.iso/Boot%2Fboot.sdi
mv boot.sdi ./disk_layout/Boot
echo ""
echo "Downloading BCD and placing it in the disk_layout..."
echo ""
wget -O BCD https://archive.org/download/windows-10-1507-home-and-pro/Win10_EnglishInternational_x64.iso/efi%2Fmicrosoft%2Fboot%2Fbcd
mv BCD ./disk_layout/EFI/Microsoft/Boot
echo ""
echo "Downloading the boot.wim as cab, extracting it and moving it to the disk_layout..."
echo ""
wget https://web.archive.org/web/20171023181927id_/https://download.microsoft.com/download/8/1/9/8197FEB9-FABE-48FD-A537-7D8709586715/adk/Installers/6d3c63e785ac9ac618ae3f1416062098.cab
cabextract 6d3c63e785ac9ac618ae3f1416062098.cab
mv filad61cf00c94775125d186add4ac43371 boot_original.wim
mv boot_original.wim ./working_dir
rm -f 6d3c63e785ac9ac618ae3f1416062098.cab
rm -f cat6d3c63e785ac9ac618ae3f1416062098
echo ""
