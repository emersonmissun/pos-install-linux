#!/bin/bash

################################################################################
# Nome do Script: ${file_name} // buscar o nome do arquivo
# Este arquivo é parte do projeto ${project_name} // buscar o nome do projeto

# Autor: Emerson Missun 
# Contato: https://missun.com.br/contatos

# Data de Criação: 28/02/2023 // buscar a data de criação
# Alterado pela última vez por: ${vscode_user} // buscar o usuário do vscode
# Última Atualização: {today} // buscar a data de hoje
# Versão: {release_version} // buscar a tag da versão do projeto no git
# Descrição: Script para atualização do sistema Linux

# Repositório: {repository_url} // buscar a url do repositório
# Licença: {license_info} // buscar a licença do projeto
# Linguagem: {language} // buscar a linguagem do projeto
# Requisitos:
	# Testado em:
	# Distros: Linux Mint 21.1 Vera, {new_distro_name} // buscar o nome da nova distro caso seja necessário
	# Bases: Ubuntu 22.04 jammy {new_base_version} // buscar a base da distro testada

# Path: {file_path} // buscar o caminho do arquivo
################################################################################

# Define uma função para exibir o menu de opções
function exibir_menu {
    echo "Escolha uma opção:"
    echo "1) Atualizar tudo"
    echo "2) Atualizar Pacotes Apt"
    echo "3) Atualizar Pacotes SNAP"
<<<<<<< HEAD:scripts/menu_update_pcts.sh
    echo "4) Atualizar Pacotes Flatpak"
    echo "5) Encerrar"
=======
    echo "4) Atualizar Pacotes Flatpack"
	echo "5) Reiniciar"
    echo "6) Encerrar"
>>>>>>> effa43d (fix: 🐛 Atualização do Sistema):scripts/testes/menu_update_pcts
}

# Exibe o menu de opções na tela
exibir_menu 

# Lê a opção escolhida pelo usuário
read -r -r option

# Loop principal do script
# Loop principal do script
while true; do
    case $option in
        1)
            # Atualiza todos os pacotes
            sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo autoremove && sudo apt clean && sudo apt autoclean sudo apt full-upgrade && sudo snap refresh && flatpak update
<<<<<<< HEAD:scripts/menu_update_pcts.sh
            echo "Atualização concluída com sucesso."
            echo "Deseja encerrar o script? [S/n]"
            read -r resposta
            if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
                echo "Encerrando o script..."
                exit 0
            else
                exibir_menu
                read -r option
=======
            echo "Atualização concluída com sucesso. Seria necessário reiniciar o sistema."
			echo "Deseja reiniciar o sistema? [S/n]"
			read -r resposta 
			if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
                echo sleep 1
				echo "Reiniciando o sistema..."
				echo sleep 5 
				sudo reboot 
                exit 0
            else
                exibir_menu
                read -r opcao
>>>>>>> effa43d (fix: 🐛 Atualização do Sistema):scripts/testes/menu_update_pcts
            fi
            ;;
        2)
            echo "Deseja atualizar os pacotes do Apt? [S/n]"
            read -r resposta
            if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
                # Atualiza os pacotes do Apt
                sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo autoremove && sudo apt clean && sudo apt autoclean sudo apt full-upgrade
                echo "Atualização concluída com sucesso."
            fi
            echo "Deseja encerrar o script? [S/n]"
            read -r resposta
            if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
                echo "Encerrando o script..."
                exit 0
            else
                exibir_menu
<<<<<<< HEAD:scripts/menu_update_pcts.sh
                read -r option
            fi
            ;;
        3)
            echo "Deseja atualizar os pacotes do SNAP? [S/n]"
=======
                read -r opcao
            fi
            ;;
        3)
            echo "Deseja atualizar os pacotes do SNAP? [S/n]" # TODO: #3 Verificar se o SNAP está instalado e desbloqueado no Linux Mint
>>>>>>> effa43d (fix: 🐛 Atualização do Sistema):scripts/testes/menu_update_pcts
            read -r resposta
            if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
                # Atualiza os pacotes do SNAP
                sudo snap refresh
                echo "Atualização concluída com sucesso."
            fi
            echo "Deseja encerrar o script? [S/n]"
            read -r resposta
            if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
                echo "Encerrando o script..."
                exit 0
            else
                exibir_menu
<<<<<<< HEAD:scripts/menu_update_pcts.sh
                read -r option
=======
                read -r opcao
>>>>>>> effa43d (fix: 🐛 Atualização do Sistema):scripts/testes/menu_update_pcts
            fi
            ;;
        4)
            echo "Deseja atualizar os pacotes do Flatpak? [S/n]"
            read -r resposta
            if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
                # Atualiza os pacotes do Flatpak
                flatpak update
                echo "Atualização concluída com sucesso."
            fi
            echo "Deseja encerrar o script? [S/n]"
            read -r resposta
            if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
                echo "Encerrando o script..."
                exit 0
            else
                exibir_menu
<<<<<<< HEAD:scripts/menu_update_pcts.sh
                read -r option
=======
                read -r opcao
>>>>>>> effa43d (fix: 🐛 Atualização do Sistema):scripts/testes/menu_update_pcts
            fi
            ;;
		5)
			echo "Deseja reiniciar o sistema? [S/n]" 
			read -r resposta 
			if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
				echo "Reiniciando o sistema..."
				sudo reboot 
			else
				exibir_menu
				read -r opcao
			fi
			;;
		6)
			echo "Deseja encerrar o script? [S/n]"
			read -r resposta
			if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
				echo "Encerrando o script..."
				exit 0
			else
				exibir_menu
<<<<<<< HEAD:scripts/menu_update_pcts.sh
				read -r option
=======
				read -r opcao
>>>>>>> effa43d (fix: 🐛 Atualização do Sistema):scripts/testes/menu_update_pcts
			fi
			;;
		*)
			echo "Opção inválida."
			exibir_menu
<<<<<<< HEAD:scripts/menu_update_pcts.sh
			read -r option
=======
			read -r opcao
>>>>>>> effa43d (fix: 🐛 Atualização do Sistema):scripts/testes/menu_update_pcts
			;;
	esac
done
