#! /bin/bash
# Configurar o git com os parâmetros globais
sudo git config --global user.name "$GIT_USER_NAME"
sudo git config --global user.email "$GIT_USER_EMAIL"

# Atualizar o sistema
sudo apt update
sudo apt upgrade -y

# Adicionar o repositório do WordOps e instalar o WordOps:
wget -qO wo wops.cc && sudo bash wo
sudo wo update
sudo wo stack install --all

# Iniciar o serviço WordOps e configurar o PHP padrão
sudo systemctl start wo.service
sudo wo stack set --php8.2

# Pós Instalação do Wordops

## Verificar qual o shell utilizado pelo sistema.
### se for bash, executar o seguinte:
read -p "Deseja criar um alias para 'sudo wo'? [S/n]: " create_alias
if [[ $create_alias =~ ^[Ss]$ ]]; then
    if [[ $SHELL == *"zsh"* ]]; then
        source /etc/bash_completion.d/wo_auto.rc
		echo "alias wo='sudo wo'" >> ~/.zshrc
        source ~/.zshrc
    else
        echo "alias wo='sudo wo'" >> ~/.bashrc
        source ~/.bashrc
    fi
fi
