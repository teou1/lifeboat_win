#!/bin/bash
cp -r ./addons/* ./working_dir/image
if [ $? -eq 0 ]; then echo "Success!"; echo ""; else echo ""; echo "ERROR! Aborting ..."; echo ""; exit; fi
rm -f ./working_dir/image/readme.md
if [ $? -eq 0 ]; then echo "Success!"; echo ""; else echo ""; echo "ERROR! Aborting ..."; echo ""; exit; fi
mv -f ./working_dir/image/startnet.cmd ./working_dir/image/Windows/System32/startnet.cmd
if [ $? -eq 0 ]; then echo "Success!"; echo ""; else echo ""; echo "ERROR! Aborting ..."; echo ""; exit; fi
