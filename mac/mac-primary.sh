#!/bin/bash 

# brew stuff
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask 
# brew install mas-cli/tap/mas 

brew install -y $(cat brew-list.txt)
brew cask install $(cat brew-cask-list.txt)
# mas install $(cat brew-mas-list.txt | cut -d' ' -f1)

# Install Monaco powerline font
# git clone https://github.com/DogFooter/powerline-fonts
# cp ./powerline-fonts/Monaco/Monaco\ for\ Powerline.otf

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# karabiner-element
cp ./karabiner/* ~/.config/karabiner/assets/complex_modifications/

