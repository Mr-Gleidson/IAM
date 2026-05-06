# BloodHound CE - Instalação via Linux

Este guia mostra como instalar e subir o **BloodHound CE** no Linux usando **Terminal**, **Git**, **Docker** e **Docker Compose Plugin**.


## 1. Atualização das ferramentas:

```bash
sudo apt update
sudo apt install docker.io docker-compose-plugin -y
sudo systemctl enable docker --now
```


## 2. Criar pasta bloodhound e estar nela:
```bash
mkdir -p ~/bloodhound-ce
cd ~/bloodhound-ce
```

## 3. Baixar o respositório do bloodhound na pasta:
```bash
git clone https://github.com/SpecterOps/BloodHound.git
```


## 4. Entrar na pasta correta:
```bash
cd BloodHound/examples/docker-compose
```
(Atenção, entrar na pasta que tem o docker-compose.yml


## 5. Subir um docker:
```bash
sudo docker compose up -d
```
Para validar se o bloodhound subiu certinho
sudo docker compose ps

## 6. Login Bloodhoun - Pegar a senha correta:


cd ~/bloodhound-ce/BloodHound/examples/docker-compose
```bash
sudo docker compose logs bloodhound | grep -i "Initial Password"
```

Para pegar o login correto:
```bash
cat bloodhound.config.json
```

## RESUMO RAPIDO
```bash
sudo apt update
sudo apt install docker.io docker-compose-plugin -y
sudo systemctl enable docker --now

mkdir -p ~/bloodhound-ce
cd ~/bloodhound-ce

git clone https://github.com/SpecterOps/BloodHound.git

cd ~/bloodhound-ce/BloodHound/examples/docker-compose

sudo docker compose up -d
sudo docker compose ps

sudo docker compose logs bloodhound | grep -i "Initial Password"

cat bloodhound.config.json
```


# BloodHound CE - Instalação via PowerShell no Windows

Este guia mostra como instalar e subir o **BloodHound CE** no Windows usando **PowerShell**, **Git** e **Docker Desktop**.

---

## 1. Pré-requisitos

Antes de começar, instale:

- Docker Desktop
- Git for Windows
- PowerShell

Depois de instalar o Docker Desktop, abra ele e deixe rodando.

Para validar se o Docker está funcionando:

```powershell
docker --version
docker compose version
