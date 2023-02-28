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
# Licença: {licence_info} // buscar a licença do projeto
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
    echo "4) Atualizar Pacotes Flatpack"
    echo "5) Encerrar"
}

# Exibe o menu de opções na tela
exibir_menu 

# Lê a opção escolhida pelo usuário
read -r opcao

# Loop principal do script
# Loop principal do script
while true; do
    case $opcao in
        1)
            # Atualiza todos os pacotes
            sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo autoremove && sudo apt clean && sudo apt autoclean sudo apt full-upgrade && sudo snap refresh && flatpak update
            echo "Atualização concluída com sucesso."
            echo "Deseja encerrar o script? [S/n]"
            read resposta
            if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
                echo "Encerrando o script..."
                exit 0
            else
                exibir_menu
                read opcao
            fi
            ;;
        2)
            echo "Deseja atualizar os pacotes do Apt? [S/n]"
            read resposta
            if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
                # Atualiza os pacotes do Apt
                sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo autoremove && sudo apt clean && sudo apt autoclean sudo apt full-upgrade
                echo "Atualização concluída com sucesso."
            fi
            echo "Deseja encerrar o script? [S/n]"
            read resposta
            if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
                echo "Encerrando o script..."
                exit 0
            else
                exibir_menu
                read opcao
            fi
            ;;
        3)
            echo "Deseja atualizar os pacotes do SNAP? [S/n]"
            read resposta
            if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
                # Atualiza os pacotes do SNAP
                sudo snap refresh
                echo "Atualização concluída com sucesso."
            fi
            echo "Deseja encerrar o script? [S/n]"
            read resposta
            if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
                echo "Encerrando o script..."
                exit 0
            else
                exibir_menu
                read opcao
            fi
            ;;
        4)
            echo "Deseja atualizar os pacotes do Flatpak? [S/n]"
            read resposta
            if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
                # Atualiza os pacotes do Flatpak
                flatpak update
                echo "Atualização concluída com sucesso."
            fi
            echo "Deseja encerrar o script? [S/n]"
            read resposta
            if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
                echo "Encerrando o script..."
                exit 0
            else
                exibir_menu
                read opcao
            fi
            ;;
        5)
			echo "Deseja encerrar o script? [S/n]"
			read resposta
			if [ "$resposta" == "S" ] || [ "$resposta" == "s" ]; then
				echo "Encerrando o script..."
				exit 0
			else
				exibir_menu
				read opcao
			fi
			;;
		*)
			echo "Opção inválida."
			exibir_menu
			read opcao
			;;
	esac
done
