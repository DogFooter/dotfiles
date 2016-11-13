#!/bin/bash

if [ -e ~/.vim/bundle/Vundle.vim ]; then
    clear
else
    mkdir -p ~/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [ -e ~/.vimrc ]; then
    rm ~/.vimrc;cp vimrc ~/.vimrc
else
    cp vimrc ~/.vimrc
fi

mkdir -p ~/.vim/syntax;cp syntax/python.vim ~/.vim/syntax/python.vim

if [ -e /usr/share/fonts/PowerlineSymbols.otf ]; then
    wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
    sudo mv PowerlineSymbols.otf /usr/share/fonts/
    sudo fc-cache -vf
    sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
fi

wget -O xt  http://git.io/v3Dlb && chmod +x xt && ./xt && rm xt
