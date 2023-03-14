#! /env/bin/bash -x 
 # 
 # Autor: Emerson Missun
 #
 # Nome: Pós instalação de Sistemas Operacionais Linux e Windows
 # Descrição: Script para automatizar a pós instalação de sistemas operacionais Linux e Windows 
 #
 # Versão: 0.1.0 
 # Data: 14/03/2023 
 # 
 # 0.1.0 - 14-03-2023 - Versão inicial 
 #

# Início do script 
 # 
echo "Iniciando o script de pós instalação" 
sleep 3 
clear 
 # Apresentar o autor do script, data e versão, e o que o script faz
echo "Autor: Emerson Missun"
echo "Data: 14/03/2023"
echo "Versão: 0.1.0"
echo "Descrição: Script para automatizar a pós instalação de sistemas operacionais Linux e Windows"
sleep 3
clear

# Apresentar o menu de opções para o usuário escolher o que deseja fazer
echo "Escolha uma das opções abaixo:"
echo "1 - Atualizar o sistema"
echo "2 - Instalar pacotes"
echo "3 - Iniciar um Guia de Instalação"
echo "0 - Sair do script"

# Ler a opção escolhida pelo usuário
read option

# Validar a opção escolhida pelo usuário
if [ $option -eq 1 ]; then
	echo "Atualizando o sistema..."
	# Atualizar o sistema operacional executando o script de atualização na pasta /scripts do repositório, up_date_grade_clean.sh 
	sudo sh pos-install-linux/scripts/up_date_grade_clean.sh 
	sleep 3
	clear
elif [ $option -eq 2 ]; then
	echo "Instalando pacotes básicos..."
	# Instalar pacotes executando o script de instalação na pasta /scripts do repositório, install_packages.sh
	sudo sh pos-install-linux/scripts/install_packages.sh
	sleep 3
	clear
elif [ $option -eq 3 ]; then
	echo "Iniciando o Guia de Instalação..."
	# Iniciar o Guia de Instalação executando o script de instalação na pasta /scripts do repositório, install_guide.sh
	sudo sh pos-install-linux/scripts/install_guide.sh
	sleep 3
	clear
elif [ $option -eq 0 ]; then
	echo "Saindo do script..."
	# Sair do script
	echo "Script finalizado!"
	sleep 3
	clear
else
	echo "Opção inválida!"
	sleep 3
	clear
fi

# Fim do script
