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
if [ -z $1 ]; then
    full=0
else
    if [ $1 == "full" ]; then
        full=1
    fi 
fi

#primary setup

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     ubuntu/ubuntu-primary.sh;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac


#vim setup 
### vim plug install

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
cp vim/vimrc ~/.vimrc

if [ $full -eq 1 ]; then
    vim +PlugInstall
    #oh my zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    # for auto suggestion
    git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions 
    cp zsh/zshrc ~/.zshrc 
    source ~/.zshrc
fi 


echo "Setup done"
exit
