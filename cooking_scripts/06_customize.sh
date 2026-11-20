#!/bin/bash
cp -r ./addons/* ./working_dir/image
rm -f ./working_dir/image/readme.md
mv -f ./working_dir/image/startnet.cmd ./working_dir/image/Windows/system32/startnet.cmd
echo ""
