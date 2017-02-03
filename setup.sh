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

github-repo:        https://github.com/dogfooter/posix-setup
author's site:      https://dogfooter.github.io


"
while true; do
    read -p "Is this first setup? (Now just install vim) [YyNn] : " yn
    case $yn in
        [Yy]* ) ./primary.sh; break;;
        [Nn]* ) break;;
        * ) echo "Only Y y N n";;
    esac
done
while true; do
    read -p "Do you agree setup VIM? [YyNn] : " yn
    case $yn in
        [Yy]* ) ./vimsetting.sh; break;;
        [Nn]* ) break;;
        * ) echo "Only Y y N n";;
    esac
done
while true; do
    read -p "Do you agree setup fonts? [YyNn] : " yn
    case $yn in
        [Yy]* ) ./fonts.sh; break;;
        [Nn]* ) break;;
        * ) echo "Only Y y N n";;
    esac
done

echo "Setup done"
exit
