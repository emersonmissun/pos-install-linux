#! /env/bin/ bash

echo "Criação de pastas padrão para a pós instalação do sistema"

source scripts/variaveis.sh



# Criando pastas padrão

echo "Deseja criar uma pasta padrão para projetos? (s/n)"
read resposta

if [ $resposta = "s" ]; then
	echo "Digite o nome da pasta"
	read nome_pasta
	mkdir /home/$USER/$nome_pasta
	echo "Pasta criada com sucesso"
else
	echo "Pasta não criada"
fi


