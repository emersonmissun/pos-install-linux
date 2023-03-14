#! /env/bin/bash -x 
 # 
 # Autor: 
 #
 # Nome: Pós instalação do Linux - Multi SO
 #
 # Descrição: 
 #
 # Versão: 0.1.0 
 # Data: 14/03/2023 
 # 
 # 1.0 - 14-03-2023 - Versão inicial 
 #

# Variáveis
source /conf/parametros.conf

# Funções
source /conf/funcoes.sh

# Início do script 
# Verifica se o usuário é root
verifica_root 

# Verifica se o arquivo de parâmetros existe se não existir cria o arquivo de parâmetros com os valores padrões 
verifica_arquivo_parametros

# Verifica se o arquivo de funções existe se não existir cria o arquivo de funções com os valores padrões
verifica_arquivo_funcoes


