#! bin/env/ python

# Este script permite criar pastas e arquivos dentro delas de forma automática e organizada.
# O objetivo é criar um ambiente de trabalho mais organizado, limpo e personalizado para cada atividade no mundo da publicidade e marketing digital.

# Importando as bibliotecas necessárias
import os # Biblioteca para criar pastas e arquivos
import shutil # Biblioteca para mover arquivos

## Criando pastas para Sistema Operacional Windows

### Criando pastas Clientes 
os.makedirs('Clientes') # Pasta para arquivos de clientes

### Criando pastas e arquivos para Projetos de SEO 
os.makedirs('Projetos/SEO') # Pasta para arquivos de SEO
