#!/bin/bash

echo "Parâmetros (variáveis de ambiente) utilizados nos scripts de instalação dos Serviços de Rede
no Ubuntu Server 20.04.x LTS, antes de modificar esse arquivo, veja os arquivos: BUGS, NEW e
CHANGELOG para mais informações."

echo "Criado Originalmente por: Robson Vaamonde"
echo "Gostaria de entrar em contato com o autor do script? (s/n)"
read CONTATO_VAAMONDE
if [ $CONTATO_VAAMONDE = "s" ]; then
	echo "Entre em contato com o autor do script via:"
	echo "Site: https://procedimentosemti.com.br"
	echo "Facebook: https://facebook.com/ProcedimentosEmTI"
	echo "Facebook: https://facebook.com/BoraParaPratica"
	echo "YouTube: https://youtube.com/BoraParaPratica"
	echo "Linkedin: https://linkedin.com/in/robson-vaamonde-0b029028/"
	echo "Instagram: https://instagram.com/procedimentoem/?hl=pt-br"
	echo "Github: https://github.com/vaamonde"
fi

echo "Deseja continuar com a execução do script? (s/n)"
read CONTINUAR
if [ $CONTINUAR = "n" ]; then
	echo "Script abortado pelo usuário!"
	exit 1
fi
echo "Modificado e atualizado por: Emerson Missun"
echo ""
echo "Gostaria de entrar em contato com o autor do script? (s/n)"
read CONTATO_MISSUN
if [ $CONTATO_MISSUN = "s" ]; then
	echo "Entre em contato com Emerson Missun, o "fuçador" do script via:"
	echo "Blog pessoal: https://missun.com.br"
	echo "Site Profissional: https://refacao.com.br"
	echo "Facebook: https://facebook.com/emersonmissun"
	echo "Facebook: https://facebook.com/refacao"
	echo "YouTube: https://youtube.com/refacao"
	echo "Linkedin: https://linkedin.com/in/emerson-missun-0b029028/"
	echo "Instagram: https://instagram.com/emersonmissun/?hl=pt-br"
	echo "Github: https://github.com/emersonmissun"
	echo "Twitter: https://twitter.com/missun_"
	echo "Data de criação: 10/10/2021"
	echo "Data de atualização: 07/02/2023"
	echo "Versão: 0.1"
	echo "Testado e homologado para:"
	echo "Ubuntu Server 20.04.x LTS x64"
	echo "Linux Mint 21.1 x64 Cinnamon e XFCE"
fi

echo " "
echo "============================================================================================="
echo "                    VARIÁVEIS GLOBAIS UTILIZADAS EM TODOS OS SCRIPTS                         "
echo "============================================================================================="
echo " "
echo " "
echo "Declarando as variáveis utilizadas na verificação e validação da versão do Ubuntu Server"
sleep 3
echo " "

# Variável da Hora Inicial do Script, utilizada para calcular o tempo de execução do script
# opção do comando date: +%T (Time)
HORAINICIAL=$(date +%T)
#
echo "Variáveis para validar o ambiente, verificando se o usuário é "Root" e versão do "Ubuntu""
sleep 3
# opções do comando id: -u (user)
# opções do comando: lsb_release: -r (release), -s (short), 
USUARIO=$(id -u)
UBUNTU=$(lsb_release -rs)

echo "Variável do Caminho e Nome do arquivo de Log utilizado em todos os script"
sleep 3
# opção da variável de ambiente $0: Nome do comando/script executado
# opção do redirecionador | (piper): Conecta a saída padrão com a entrada padrão de outro comando
# opções do comando cut: -d (delimiter), -f (fields)
LOGSCRIPT="/var/log/$(echo $0 | cut -d'/' -f2)"

echo "Exportando o recurso de Noninteractive do Debconf para não solicitar telas de configuração e nenhuma interação durante a instalação ou atualização do sistema via Apt ou Apt-Get. Ele aceita a resposta padrão para todas as perguntas."
export DEBIAN_FRONTEND="noninteractive"
sleep 3

echo " "
clear
echo "============================================================================================="
