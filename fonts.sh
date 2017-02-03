#!/bin/bash

function echo_() {
    echo "[$0]" $1
}

echo_ "Install 'Inconsolata' font"
apt-get install ttf-inconsolata

echo_ "PowerlineSymbols"


while true; do
    read -p "Do you agree install PowerlineSymbols fonts? [YyNn] : " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) echo_ "Done"; exit; break;;
        * ) echo "Only Y y N n";;
    esac
done


if [ -e /usr/share/fonts/PowerlineSymbols.otf ]; then
    wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
    sudo mv PowerlineSymbols.otf /usr/share/fonts/
    sudo fc-cache -vf
    sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
fi

echo_ "Done"
