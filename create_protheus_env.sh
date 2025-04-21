#!/bin/bash

echo "🔧 Criando novo ambiente Protheus com Docker"

read -p "🔤 Nome do container (ex: protheus_novoambiente): " CONTAINER_NAME
read -p "🔑 SPECIAL_KEY (ex: novoambiente): " SPECIAL_KEY
read -p "📦 NAME_APP (ex: novoambiente): " NAME_APP
read -p "🗄️ DB_HOST (ex: professorx.insider.testes): " DB_HOST
read -p "📚 DB_ALIAS (ex: novoambiente): " DB_ALIAS
read -p "🔐 LICENSE_SERVER (ex: professorx.insider.testes): " LICENSE_SERVER
read -p "🔢 LICENSE_PORT (ex: 5555): " LICENSE_PORT
read -p "📁 Caminho do diretório base local (ex: /home/antunesls/ambientes/novoambiente): " BASE_DIR
read -p "🌐 Porta externa do AppServer (ex: 9091): " PORT1
read -p "🌐 Porta externa do WebApp (ex: 9092): " PORT2
read -p "🐳 Nome da imagem Docker (ex: protheus_linux_24_3_0_4): " IMAGE_NAME

echo ""
echo "🚀 Executando container..."
echo ""

sudo cp -r /home/antunesls/padrao /home/antunesls/ambientes/$CONTAINER_NAME

sudo docker run -d \
  --name $CONTAINER_NAME \
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
