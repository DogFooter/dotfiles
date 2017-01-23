#!/bin/bash
# this script is for first deploy

if [ -e ~/.vim/bundle/Vundle.vim ]; then
    clear
else
    mkdir -p ~/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# make link in vimrc ( for git update )
rm ~/.vimrc;ln -s `pwd`/vimrc ~/.vimrc


if [ -e /usr/share/fonts/PowerlineSymbols.otf ]; then
    wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
    sudo mv PowerlineSymbols.otf /usr/share/fonts/
    sudo fc-cache -vf
    sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
fi

