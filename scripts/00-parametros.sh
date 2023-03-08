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
	echo "Data de criação: 10/10/2021"
	echo "Data de atualização: 07/02/2023"
	echo "Versão: 0.1"
	echo "Testado e homologado para:"
	echo "	Ubuntu Server 20.04.x LTS x64"
	echo "	Linux Mint 21.1 x64 Cinnamon e XFCE"

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

fi
