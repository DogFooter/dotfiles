#!/bin/sh

. parse_yaml.sh

eval $(parse_yaml env.yml "config_")

echo $config_myself_nickname
echo $config_myself_name_first
# echo $config_mac_shell_ohMyZsh
echo $config_mac_brew_zsh
