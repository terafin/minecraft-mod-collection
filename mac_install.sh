#!/bin/sh


MINECRAFT_VERSION=1.15.2
FORGE_VERSION=31.1.63

FORGE_INSTALLER_URL="https://files.minecraftforge.net/maven/net/minecraftforge/forge/$MINECRAFT_VERSION-$FORGE_VERSION/forge-$MINECRAFT_VERSION-$FORGE_VERSION-installer.jar"
# FORGE_DIRECTORY="$HOME/Library/Application Support/minecraft/libraries/net/minecraftforge/forge/$MINECRAFT_VERSION-$FORGE_VERSION"

# echo "Installing supported Forge"
# mkdir -p "$FORGE_DIRECTORY" && wget -cO "$FORGE_DIRECTORY/forge-$MINECRAFT_VERSION-$FORGE_VERSION.jar" "http://files.minecraftforge.net/maven/net/minecraftforge/forge/$MINECRAFT_VERSION-$FORGE_VERSION/forge-$MINECRAFT_VERSION-$FORGE_VERSION-universal.jar"

mkdir -p /tmp/forge-install
cd /tmp/forge-install
curl -O "$FORGE_INSTALLER_URL"
java -jar /tmp/forge-install/forge-$MINECRAFT_VERSION-$FORGE_VERSION-installer.jar
rm -rf /tmp/forge-install

echo "Done installing forge"

echo "Making the mods directory"
mkdir -p ~/Library/Application\ Support/minecraft/mods
cd ~/Library/Application\ Support/minecraft/mods
echo "Downloading mods"
curl -L -O https://github.com/terafin/minecraft-mod-collection/raw/master/mods.zip
echo "Removing old versions of mods"
rm -rf *OptiFine*
rm -rf *Xaeros*
echo ""
echo ""
echo "*** Existing mods - may not work"
find . -iname "*.jar"
echo "***"
echo ""
echo ""

echo "Installing mods"
unzip -o mods.zip
rm mods.zip
echo "Complete"
