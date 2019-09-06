#!/bin/sh

mkdir ~/Library/Application\ Support\minecraft\mods
cd ~/Library/Application\ Support\minecraft\mods
curl -sS https://github.com/terafin/minecraft-mod-collection/raw/master/mods.zip > mods.zip
unzip file.zip
rm file.zip
