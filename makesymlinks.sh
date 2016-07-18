#!/bin/bash

# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

# Variables

dir=~/dotfiles        # dotfiles directory
olddir=~/dotfiles_old # old dotfiles backup directory
files="asoundrc bashrc conkyrc emacs i3 vimrc xinitrc Xresources" # list of files to symlink in homedir

# creating dotfiles_old in homedir
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
