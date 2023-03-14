#!/usr/bin/env bash

# Criar variável para o caminho do script up_date_grade_clean.sh
UPGRADE_PATH=$(dirname $(readlink -f $0))

# Atuliazação do sistema

echo "Inicio da atualização do sistema"
echo " "
echo " "

echo "Atualizar pacotes apt? (s/n)"
read -r APT
if [ "$APT" = "s" ]; then
	sudo apt update
	clear
	sudo apt upgrade -y
	clear
	sudo apt full-upgrade -y
	clear
	sudo apt dist-upgrade -y
	clear
	sudo apt autoremove -y
	clear
	sudo apt autoclean -y
	clear
	sudo apt clean -y
	echo " "
	echo " "
	echo "Pacotes apt atualizados com sucesso!"
	echo " "
	echo " "
fi

echo " "
echo " "
echo "Atualizar pacotes snap? (s/n)"
read -r SNAP
if [ "$SNAP" = "s" ]; then
	sudo snap refresh
	echo " "
	echo " "
	echo "Pacotes snap atualizados com sucesso!"
	echo " "
	echo " "
fi
echo " "
echo " "
echo "Atualizar pacotes flatpak? (s/n)"
read -r FLATPAK
if [ "$FLATPAK" = "s" ]; then
	flatpak update
	echo " "
	echo " "
	echo "Pacotes flatpak atualizados com sucesso!"
	echo " "
	echo " "
fi
echo " "
echo " "
clear
echo "Sistema atualizado com sucesso!"
