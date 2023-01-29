#! /usr/bin/env bash

# Instalação do tilix
# sudo apt-get install tilix

# Instalação da fonte Hack Nerd Font 
# sudo apt-get install fonts-hack-ttf

sudo mkdir -pv ~/.local/share/fonts/Hack
cd ~/.local/share/fonts/Hack || exit
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
sudo unzip Hack.zip
sudo fc-cache -f -v

# Instalação do zsh e oh-my-zsh
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

