# Scripts e Comandos Essenciais para Google Cloud Platform (GCP)

Bem-vindo ao repositório! Aqui você encontrará scripts e comandos essenciais para trabalhar com a Google Cloud Platform (GCP), além de dicas úteis para edição no VS Code e uso do Vim.

## Índice

- [Instalação do Google Cloud SDK](#instalação-do-google-cloud-sdk)
- [Autenticação na gcloud](#autenticação-na-gcloud)
- [Comandos úteis do gcloud](#comandos-úteis-do-gcloud)
- [Dicas de Edição no VS Code](#dicas-de-edição-no-vs-code)
- [Comandos do Vim](#comandos-do-vim)

Para instalar o Ubuntu na sua máquina
```sh
wsl --install
```

## Instalação do Google Cloud SDK

### Verifique se o CLI está instalado

```sh
gcloud --version
```

### Instale o GCloud no CLI:

  [Documentação Microsoft como instalar GCloud no seu CLI](https://cloud.google.com/sdk/docs/install?hl=pt-br#deb)


## Autenticação na gcloud

### Para autenticar na gcloud, use:

 ```
gcloud auth login
 ```


### Para verificar qual conta está autenticada:

 ```
gcloud auth list
 ```

 
## Comandos úteis do gcloud

Para obter ajuda sobre qualquer comando do gcloud:

```
gcloud --help
```


## Dicas de Edição no VS Code

### Edição Múltipla

No VS Code, aperte `Alt + Shift` e arraste a seleção para fazer a mesma alteração em várias linhas.

## Comandos do Vim

### Permissões e Execução de Scripts

Para dar permissão de execução a um script:

```
chmod +x iam_policy_bind.sh
```


### Editando Arquivos no Vim

Para abrir e editar um arquivo no Vim:

```
vim doc.sh
```


#### Comandos dentro do Vim

- `i` para inserir conteúdo
- `dd` para deletar uma linha (fora do modo de inserção)
- `o` para escrever na linha abaixo
- `O` para escrever na linha acima

### Salvando e Saindo

Para salvar o documento e sair, aperte `esc` e digite:

```
:wq!
```


### Executando Scripts

Para executar um script:

```
./iam_policy_bind.sh
```


---

Esperamos que essas informações sejam úteis para você. Se tiver alguma dúvida ou sugestão, sinta-se à vontade para abrir uma issue ou enviar um pull request!
