#!/bin/bash
# this script is for first deploy

function echo_() {
    echo "[$0]" $1
}

overwriteVimrc=false
isAdmin=false

echo_ "Install Vundle"
if [ -e ~/.vim/bundle/Vundle.vim ]; then
    echo_ "Vundle.vim exits"
    clear
else
    mkdir -p ~/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
echo_ "Done"


# make link in vimrc ( for git update )
echo_ "Deploy .vimrc file"
while true; do
    read -p "Do you agree overwrite .vimrc? [YyNn] : " yn
    case $yn in
        [Yy]* ) overwriteVimrc=true; break;;
        [Nn]* ) break;;
        * ) echo "Only Y y N n";;
    esac
done
if $overwriteVimrc; then 
    while true; do
        read -p "Are you dogfooter? (Y: dogfooter, N: Guest) [YyNn] : " yn
        case $yn in
            [Yy]* ) isAdmin=true; break;;
            [Nn]* ) break;;
            * ) echo "Only Y y N n";;
        esac
    done 

    if [ -f ~/.vimrc ]
    then
        rm ~/.vimrc;
    fi
    
    if $isAdmin; then
        cp ./vimrcs/main_vimrc ~/.vimrc
    else
        cp ./vimrcs/guest_vimrc ~/.vimrc
    fi

fi
echo_ "~/.vimrc done"

# vim plugin install

while true; do
    read -p "Do you want install vim plugin now? 
    Notice) If you finish installing plugin, get out from vim
    [YyNn] : " yn
    case $yn in
        [Yy]* ) echo_ "Install Plugins..."; vim +PluginInstall; break;;
        [Nn]* ) break;;
        * ) echo "Only Y y N n";;
    esac
done

echo_ "Done"
