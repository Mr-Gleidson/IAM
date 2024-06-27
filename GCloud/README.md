# Scripts e Comandos Essenciais para Google Cloud Platform (GCP)

Bem-vindo ao repositório! Aqui você encontrará scripts e comandos essenciais para trabalhar com a Google Cloud Platform (GCP), além de dicas úteis para edição no VS Code e uso do Vim.

## Índice

- [Instalação do Google Cloud SDK](#instalação-do-google-cloud-sdk)
- [Autenticação na gcloud](#autenticação-na-gcloud)
- [Comandos úteis do gcloud](#comandos-úteis-do-gcloud)
- [Dicas de Edição no VS Code](#dicas-de-edição-no-vs-code)
- [Comandos do Vim](#comandos-do-vim)

## Instalação do Google Cloud SDK

### Verifique se o CLI está instalado

```sh
gcloud --version


Instale o Google Cloud SDK no Ubuntu
Adicione a chave de assinatura da Google Cloud:

sudo apt-get install apt-transport-https ca-certificates gnupg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
