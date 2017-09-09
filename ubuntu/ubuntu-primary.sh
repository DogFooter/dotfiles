#!/bin/bash

sudo apt-get update
sudo apt-get install -y vim git zsh curl
sudo apt-get insatll -y gnome-tweak-tool

# powerline font
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh 
cd ..
rm -rf fonts

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

