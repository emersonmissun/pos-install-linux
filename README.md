# pos-install-linux

# tutoriais de como usar o git


## o que é git fetch e como usar

git fetch é um comando usado para baixar commits, arquivos e referências de um repositório remoto para o seu repositório local. Ele pega todos os dados do repositório remoto que não estão no seu repositório local. Ele não modifica o seu repositório local de trabalho. Ele apenas obtém os dados do repositório remoto.

Para baixar todos os dados de um repositório remoto, você pode usar o comando git fetch.

```bash
git fetch <nome_do_repositorio>
```
### exemplo

```bash
git fetch origin
```

## o que é git pull e como usar

git pull é um comando usado para obter e integrar um repositório ou branch remoto em seu branch local. Ele pega o repositório remoto e integra-o com o seu repositório local. Este comando é equivalente a executar git fetch seguido de git merge FETCH_HEAD.

```bash
git pull <nome_do_repositorio> <nome_da_branch>
```
### exemplo

```bash
git pull origin master
```

## o que é git push e como usar

git push é um comando usado para enviar commits locais para o repositório remoto. Ele pega todos os commits do seu repositório local e os envia para o repositório remoto. Ele também atualiza todas as referências remotas que você enviou. Isso significa que, depois de executar o comando git push, todos os commits locais serão atualizados no repositório remoto.

```bash
git push <nome_do_repositorio> <nome_da_branch>
```
### exemplo

```bash
git push origin master
```

## o que é git clone e como usar

git clone é um comando usado para baixar um repositório do Git. Ele cria uma cópia de um repositório Git existente. Este comando é equivalente a executar o comando git init seguido de git remote add e git fetch seguido de git checkout para obter a mesma versão do repositório.

```bash
git clone <url_do_repositorio>
```
### exemplo

```bash
git clone
