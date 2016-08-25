#!/bin/bash
if [ -e ~/.vimrc ]; then
    rm ~/.vimrc;cp .vimrc ~/.vimrc
else
    cp .vimrc ~/.vimrc
fi
mkdir -p ~/.vim/syntax;cp .vim/syntax/python.vim ~/.vim/syntax/python.vim
