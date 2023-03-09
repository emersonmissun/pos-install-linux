#! /usr/bin/env python

# Instalar pacotes de acordo com o perfil do usuário (usuário ou administrador)

import os # Biblioteca para manipulação de arquivos e diretórios
import sys # Biblioteca para manipulação de parâmetros de linha de comando

# # Verifica se o usuário é root (administrador) ou não (usuário) e exibe o comando correto para executar o script, caso não seja root (administrador)
# if os.geteuid() == 0:
# 	print("Você é root (administrador).")
# else:
        


# Caminho para o arquivo de lista de pacotes
list_path = "/home/user/Público/scripts/pos-install-linux/lists/packages.txt"

# Verifica se o arquivo de lista existe
if not os.path.isfile(list_path):
    print(f"Arquivo de lista não encontrado em {list_path}.")
    exit(1)

# Lê o arquivo de lista e adiciona cada pacote a uma lista
with open(list_path) as f:
    packages = f.read().splitlines()

# Função para mostrar o menu
def show_menu():
    print("Selecione o pacote que deseja instalar:")
    for i, package in enumerate(packages):
        print(f"[{i}] {package}")

# Função para instalar o pacote selecionado
def install_package(choice):
    try:
        selected_package = packages[choice]
        os.system(f"sudo apt-get install {selected_package}")
        print(f"O pacote {selected_package} foi instalado com sucesso!")
    except IndexError:
        print("Opção inválida. Tente novamente.")

# Executa o menu até que o usuário selecione "sair"
while True:
    show_menu()
    choice = input("Opção: ")
    if choice.isdigit() and int(choice) < len(packages):
        install_package(int(choice))
    elif choice == str(len(packages)):
        print("Saindo do menu de instalação de pacotes.")
        exit(0)
    else:
        print("Opção inválida. Tente novamente.")

