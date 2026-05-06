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
```

## Para validar se o Git está instalado:
```powershell
git --version
```
## 2. Criar a pasta do BloodHound CE

```powershell
mkdir "$HOME\bloodhound-ce"
cd "$HOME\bloodhound-ce"
```

## 3. Baixar o repositório do BloodHound
```powershell
git clone https://github.com/SpecterOps/BloodHound.git
```
## 4. Entrar na pasta correta do Docker Compose
```powershell
cd "$HOME\bloodhound-ce\BloodHound\examples\docker-compose"
```

Atenção: você precisa estar dentro da pasta onde existe o arquivo docker-compose.yml.

Para confirmar:
```powershell
dir
```
Você deve ver algo parecido com:
```powershell
docker-compose.yml
bloodhound.config.json
```

## 5. Subir o BloodHound CE
```powershell
docker compose up -d
```

## 6. Validar se os containers subiram corretamente
```powershell
docker compose ps
```
Se tudo deu certo, os containers devem aparecer como running.

## 7. Pegar a senha inicial do BloodHound
```powershell
docker compose logs bloodhound | Select-String -Pattern "Initial Password"
```
Esse comando vai retornar a senha inicial gerada pelo BloodHound.

## 8. Pegar o login/configuração do BloodHound
```powershell
Get-Content .\bloodhound.config.json
```

Normalmente o usuário inicial é algo como:

admin

E a senha você pega nos logs com o comando anterior.

## 9. Acessar o BloodHound CE

Abra no navegador:
```powershell
http://localhost:8080
```

Faça login com o usuário e senha encontrados nos passos anteriores.

# Resumo rápido
```powershell
docker --version
docker compose version
git --version
```
```powershell
mkdir "$HOME\bloodhound-ce"
cd "$HOME\bloodhound-ce"
```
```powershell
git clone https://github.com/SpecterOps/BloodHound.git
```
```powershell
cd "$HOME\bloodhound-ce\BloodHound\examples\docker-compose"
```
```powershell
docker compose up -d
docker compose ps
```
```powershell
docker compose logs bloodhound | Select-String -Pattern "Initial Password"
```
```powershell
Get-Content .\bloodhound.config.json
```
## Comandos úteis
Parar os containers
```powershell
docker compose down
```
Subir novamente
```powershell
docker compose up -d
```
Ver logs em tempo real
```powershell
docker compose logs -f
```
Ver logs apenas do BloodHound
```powershell
docker compose logs -f bloodhound
```
Reiniciar os containers
```powershell
docker compose restart
```
Remover containers, mas manter os dados
```powershell
docker compose down
```
Remover containers e apagar dados persistentes

Use com cuidado. Isso apaga dados salvos do BloodHound, Neo4j e Postgres.
```powershell
docker compose down -v
```
Subir tudo do zero novamente
```powershell
docker compose down -v
docker compose up -d
docker compose logs bloodhound | Select-String -Pattern "Initial Password"
```
## Observações importantes
O Docker Desktop precisa estar aberto para os comandos funcionarem.
Execute o PowerShell como administrador caso tenha erro de permissão.
Se a porta 8080 já estiver em uso, o BloodHound pode não abrir corretamente.
Se o comando docker compose não funcionar, teste:
```powershell
docker-compose version
```

Em versões antigas pode ser necessário usar:
```powershell
docker-compose up -d
```
em vez de:
```powershell
docker compose up -d
```
