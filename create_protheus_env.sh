#!/bin/bash

echo "🔧 Criando novo ambiente Protheus com Docker"

read -p "🔤 Nome do ambiente (ex: novoambiente): " ENV_NAME
ENV_NAME=${ENV_NAME:-novoambiente}

CONTAINER_NAME=$ENV_NAME
SPECIAL_KEY=$ENV_NAME
NAME_APP=$ENV_NAME
DB_ALIAS=$ENV_NAME

read -p "🗄️ DB_HOST (ex: professorx.insider.testes): " DB_HOST
DB_HOST=${DB_HOST:-professorx.insider.testes}
read -p "🔐 LICENSE_SERVER (ex: professorx.insider.testes): " LICENSE_SERVER
LICENSE_SERVER=${LICENSE_SERVER:-professorx.insider.testes}
read -p "🔢 LICENSE_PORT (ex: 5555): " LICENSE_PORT
LICENSE_PORT=${LICENSE_PORT:-5555}
read -p "📁 Caminho do diretório base local (ex: /home/antunesls/ambientes): " BASE_DIR_PARENT
BASE_DIR_PARENT=${BASE_DIR_PARENT:-/home/antunesls/ambientes}
BASE_DIR="$BASE_DIR_PARENT/$ENV_NAME"
read -p "🌐 Porta externa do AppServer (ex: 9091): " PORT1
PORT1=${PORT1:-9091}
read -p "🌐 Porta externa do WebApp (ex: 9092): " PORT2
PORT2=${PORT2:-9092}
read -p "🐳 Nome da imagem Docker (ex: protheus_linux_24_3_0_4): " IMAGE_NAME
IMAGE_NAME=${IMAGE_NAME:-protheus_linux_24_3_0_4}

echo ""
echo "🚀 Executando container..."
echo ""

sudo cp -r /home/antunesls/padrao "$BASE_DIR"

sudo docker run -d \
  --name $CONTAINER_NAME \
  --device /dev/mem:/dev/mem \
  --cap-add=sys_rawio \
  --privileged \
  --ulimit core=-1 \
  -e SPECIAL_KEY=$SPECIAL_KEY \
  -e ENV_APP=TOTVS \
  -e NAME_APP=$NAME_APP \
  -e DB_HOST=$DB_HOST \
  -e DB_ALIAS=$DB_ALIAS \
  -e LICENSE_SERVER=$LICENSE_SERVER \
  -e LICENSE_PORT=$LICENSE_PORT \
  -v $BASE_DIR/data:/totvs/protheus_data \
  -v $BASE_DIR/apo:/totvs/protheus/apo \
  -p $PORT1:1234 \
  -p $PORT2:4321 \
  $IMAGE_NAME
