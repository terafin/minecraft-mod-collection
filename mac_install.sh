#!/bin/sh

echo "Making the mods directory"
mkdir -p ~/Library/Application\ Support/minecraft/mods
cd ~/Library/Application\ Support/minecraft/mods
echo "Downloading mods"
curl -L -O https://github.com/terafin/minecraft-mod-collection/raw/master/mods.zip
echo "Installing mods"
unzip mods.zip
rm mods.zip
echo "Complete"
