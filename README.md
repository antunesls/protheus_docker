# 🐳 Protheus Docker - Ambientes de Desenvolvimento

Este repositório contém instruções para inicialização e execução de containers Docker com ambientes Protheus configurados individualmente para diferentes finalidades.

## 📁 Estrutura Inicial

Para iniciar um novo ambiente, utilize o seguinte comando para copiar a estrutura padrão:

```bash
sudo cp -r /home/antunesls/padrao /home/antunesls/ambientes/testes
```

## 🚀 Execução dos Containers

Abaixo estão os comandos para inicializar os containers do Protheus com suas respectivas configurações.

---

### 🔹 Ambiente: `base_gabriel`

```bash
docker run -d   --name protheus_base_gabriel   -e SPECIAL_KEY=base_gabriel   -e ENV_APP=TOTVS   -e NAME_APP=base_gabriel   -e DB_HOST=professorx.insider.testes   -e DB_ALIAS=base_gabriel   -e LICENSE_SERVER=professorx.insider.testes   -e LICENSE_PORT=5555   -v /home/antunesls/ambientes/base_gabriel/data:/totvs/protheus_data   -v /home/antunesls/ambientes/base_gabriel/apo:/totvs/protheus/apo   -p 9091:1234   -p 9092:4321   protheus_linux_24_3_0_4
```

---

### 🔹 Ambiente: `bosform`

```bash
docker run -d   --name protheus_bosform   -e SPECIAL_KEY=bosform   -e ENV_APP=TOTVS   -e NAME_APP=bosform   -e DB_HOST=professorx.insider.testes   -e DB_ALIAS=bosform   -e LICENSE_SERVER=professorx.insider.testes   -e LICENSE_PORT=5555   -v /home/antunesls/ambientes/bosform/data:/totvs/protheus_data   -v /home/antunesls/ambientes/bosform/apo:/totvs/protheus/apo   -p 9191:1234   -p 9192:4321   protheus_linux_24_3_0_4
```

---

### 🔹 Ambiente: `totvsls`

```bash
sudo docker run -d --name totvsls -p 5555:5555 -p 8020:8020  --ulimit core=-1   --privileged  protheus_linux_totvsls
```

---

### 🔹 Ambiente: `gestao`

```bash
docker run -d   --name protheus_gestao   -e SPECIAL_KEY=gestao   -e ENV_APP=TOTVS   -e NAME_APP=gestao   -e DB_HOST=professorx.insider.testes   -e DB_ALIAS=gestao   -e LICENSE_SERVER=professorx.insider.testes   -e LICENSE_PORT=5555   -v /home/antunesls/ambientes/gestao/data:/totvs/protheus_data   -v /home/antunesls/ambientes/gestao/apo:/totvs/protheus/apo   -p 9291:1234   -p 9292:4321   protheus_linux_24_3_0_4
```

---

### 🔹 Ambiente: `testes`

```bash
docker run -d   --name protheus_testes   -e SPECIAL_KEY=testes   -e ENV_APP=TOTVS   -e NAME_APP=testes   -e DB_HOST=professorx.insider.testes   -e DB_ALIAS=testes   -e LICENSE_SERVER=professorx.insider.testes   -e LICENSE_PORT=5555   -v /home/antunesls/ambientes/testes/data:/totvs/protheus_data   -v /home/antunesls/ambientes/testes/apo:/totvs/protheus/apo   -p 9391:1234   -p 9392:4321   protheus_linux_24_3_0_4
```

---

## ✅ Requisitos

- Docker instalado e configurado
- Diretórios de ambiente criados previamente com a estrutura esperada (`data`, `apo`, etc.)
- Servidor de licenças disponível em `professorx.insider.testes:5555`
- Base de dados acessível no mesmo host (`DB_HOST`)

---

## 📌 Observações

- Certifique-se de que as portas 1234 e 4321 estejam livres para uso no host.
- Todos os volumes montados devem conter os arquivos corretos para execução do Protheus.
