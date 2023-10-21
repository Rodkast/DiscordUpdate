#!/bin/bash
#Discrord Update

#First Update System.

sudo apt update

#Second Upgrade it.

sudo apt upgrade

#Pulling Current Version

NAME="Discord"
TEMPNAME="discord.deb"
UPDATEURL="https://discordapp.com/api/download?platform=linux&format=deb"
NEW="discordNEW.deb"
clear;
echo -e "";
echo -e "Pulling $TEMPNAME from $UPDATEURL";
echo -e ".";
echo -e "..";
echo -e "...";
echo -e "....";
echo -e ".....";
echo "Downloading";
wget -nv -O "$TEMPNAME" "$UPDATEURL" >/dev/null 2>&1

for T in "$TEMPNAME"
do
	mv $TEMPNAME $NEW
done
echo -e ".....";
echo -e "....";
echo -e "...";
echo -e "..";
echo -e ".";

#Installing the Package

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~";
echo -e "Startin the Installation"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~";
echo -e "";

sudo dpkg -i $NEW

echo -e "";
echo -e "";

#Removing File
rm -r $NEW

#Done
echo -e "All Set!!"

