#!/bin/bash

countdown() {
   for i in {20..0}; do
     echo -n "${i}.. "
     read -N1 -t1 && break
   done
   echo ""
}

echo ""
echo "==========================================================="
echo ""
sha256sum ./disk_layout/Boot/boot.sdi
echo "cd2c00ce027687ce4a8bdc967f26a8ab82f651c9becd703658ba282ec49702bd is the expected hash"
echo ""
sha256sum ./disk_layout/EFI/Microsoft/Boot/BCD
# echo "5a51341dc1098cd2e8df7ca45c269135301aa8b653f1187ccb7ef39b1b7a3a5a is the expected hash"
echo "4769fec7c880b51fda601cd45a469197829bf2433ac19eb7bcd277de4c3908b3 is the expected hash"
echo ""
sha256sum ./working_dir/boot_original.wim
echo "3c7d76e672a42213b855c1f74aa6f28cdc70c219fd2e6de2ccab8eeaaeb21cfc is the expected hash"
echo ""
echo ""
echo "Pausing for 20 seconds so you can read this...please inspect the 3 hashes above..."
echo "Note this check was purely informational - maybe you decided to download the files from somewhere else?"
echo "That is why the script will continue even with a difference in checksums, it is up to you to decide if a difference in hashes is important..."
echo "Press any key to continue now without waiting."
countdown
echo ""
