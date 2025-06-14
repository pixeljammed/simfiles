#!/bin/bash

# notitg simfiles dev tool - milo tek - 14/06/25
# i made this BEFORE realising macos has an easy way to make "alias"'s... oh welll ;)
# idgaf if the text could be 1 line... syfm xx

FOLDER_NAME="pixelpack"

echo "PIXELJAM'S CRAP SYMLINK MAKER"
echo "-----------------------------"
echo " "
echo "> hey... :3"
echo "> the purpose of the script is to create an alias between the development directory to your notITG's song pack folder"
echo "> this is so I (or you) can work and change files and upload them to github without the local git repo being inside of my notITG folder across machines"
echo "> you do NOT need this if you just want to play the songs (99% of people)"
echo " "
echo "please select your notITG/songs directory"
echo "enter the full path: "
read songs_dir

if [ ! -d "$songs_dir" ]; then
    echo "directory does not exist: $songs_dir"
    exit 1
fi

script_dir="$(dirname "$0")"
script_dir="$(cd "$script_dir" && pwd)"

if [ -e "$songs_dir/$FOLDER_NAME" ]; then
    rm -rf "$songs_dir/$FOLDER_NAME"
    echo "removed existing $FOLDER_NAME"
fi

ln -s "$script_dir" "$songs_dir/$FOLDER_NAME"

if [ $? -eq 0 ]; then
    echo "symlink created: $songs_dir/$FOLDER_NAME -> $script_dir"
else
    echo "failed to create symlink"
    exit 1
fi