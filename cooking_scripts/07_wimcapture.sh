#!/bin/bash

wimcapture ./working_dir/image boot.wim --boot --rpfix --no-acls --compress=LZX:100 &&
mv boot.wim ./disk_layout/sources
echo ""
