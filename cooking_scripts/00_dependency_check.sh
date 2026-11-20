#!/bin/bash

if ! [[ "$(which wimapply)" =~ (wimapply) ]] &>/dev/null; then
	echo "wimlib dependency is not found, please install: sudo pacman -S wimlib"
	exit 1
fi

if ! [[ "$(which cabextract)" =~ (cabextract) ]] &>/dev/null; then
	echo "cabextract dependency is not found, please install: sudo pacman -S cabextract"
	exit 1
fi
echo "All dependencies are already installed."
echo ""
