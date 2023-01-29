#!/usr/bin/env bash

# Script para instalação do git, git-flow e configuração do github

# Instalação do git
sudo apt-get install git

# Configuração do github
git config --global user.name "emersonmissun"
git config --global user.email "emerson.missun@gmail.com"
git config --global core.editor "nano"
git config --global color.ui true
git config --global push.default simple

# Configuração de alias
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
# git config --global alias.unstage 'reset HEAD --'
# git config --global alias.last 'log -1 HEAD'
# git config --global alias.visual '!gitk'
# git config --global alias.visualdiff '!gitk --all --not --remotes'
# git config --global alias.visualdiffall '!gitk --all'
# git config --global alias.visualdiffremotes '!gitk --all --remotes'
# git config --global alias.visualdiffnot '!gitk --all --not'


# Instalação do git-flow
sudo apt-get install git-flow

# Configuração do gitflow para o github
git config --global gitflow.branch.master master
git config --global gitflow.branch.develop develop
git config --global gitflow.prefix.feature feature/
git config --global gitflow.prefix.release release/
git config --global gitflow.prefix.hotfix hotfix/
git config --global gitflow.prefix.support support/
git config --global gitflow.prefix.versiontag v
