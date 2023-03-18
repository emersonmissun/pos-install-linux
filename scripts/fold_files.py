#! bin/env/ python

# Este script permite criar pastas e arquivos dentro delas de forma automática e organizada.
# O objetivo é criar um ambiente de trabalho mais organizado, limpo e personalizado para cada atividade no mundo da publicidade e marketing digital.

# Importando as bibliotecas necessárias
import os # Biblioteca para criar pastas e arquivos
import shutil # Biblioteca para mover arquivos

# Criando as pastas e arquivos dentro delas

## Verificar se a pasta já existe. Se não existir, criar a pasta e os arquivos dentro dela. Se existir, mover os arquivos para a pasta. 
## A pasta será criada no diretório do usuário que estiver executando o script.
## A pasta terá o nome listado no arquivo folder.list e os arquivos terão o nome listado no arquivo file.list dentro da pasta. Esses arquivos estão no diretório script.

### Carregando os arquivos com os nomes das pastas e arquivos
folder_list = open('folder.list', 'r') # Carregando o arquivo com os nomes das pastas
file_list = open('file.list', 'r') # Carregando o arquivo com os nomes dos arquivos

### Verificando se a pasta já existe e criando-a ou movendo os arquivos para ela se ela já existir

