#!/bin/bash

clear
echo "             ____  ____  _____ _____  __";
echo "            / __ \/ __ \/ ___//  _/ |/ /";
echo "           / /_/ / / / /\__ \ / / |   / ";
echo "          / ____/ /_/ /___/ // / /   |  ";
echo "   _____ /_/  __\____/_____/___//_/|_|  ";
echo "  / ___/___  / /_/ /_(_)___  ____ ______";
echo "  \__ \/ _ \/ __/ __/ / __ \/ __ \`/ ___/";
echo " ___/ /  __/ /_/ /_/ / / / / /_/ (__  ) ";
echo "/____/\___/\__/\__/_/_/ /_/\__, /____/  ";
echo "                          /____/        ";


echo "    ____  ____  ________________  ____  ________________ ";
echo "   / __ \/ __ \/ ____/ ____/ __ \/ __ \/_  __/ ____/ __ \ ";
echo "  / / / / / / / / __/ /_  / / / / / / / / / / __/ / /_/ /";
echo " / /_/ / /_/ / /_/ / __/ / /_/ / /_/ / / / / /___/ _, _/ ";
echo "/_____/\____/\____/_/    \____/\____/ /_/ /_____/_/ |_|  ";
echo "                                                         ";

echo "dogfooter's setup.sh
        (now just setup vimrc)

github-repo:        https://github.com/dogfooter/posix-setup

github     :        https://github.com/dogfooter
another git:        http://git.ajou.ac.kr/dogfooter
author's site:      https://dogfooter.github.io


" 
#primary setup

unameOut="$(uname -s)"
case "${unameOut}" in
    Darwin*)    echo "do it";;
    *)          echo "Only for macos" & exit;;
esac

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# brew install
brew bundle --file confs/Brewfile

#vim setup 
### vim plug install

cp confs/vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
vim +PlugInstall

# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cat confs/zshrc >> ~/.zshrc

cp confs/tmux.conf ~/.tmux.conf 

source ~/.zshrc



echo "Setup done"
exit
