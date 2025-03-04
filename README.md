# protheus_docker
# protheus_docker

docker run -d \
  --name protheus_service \
  -e SPECIAL_KEY=TOTVS01 \
  -e ENV_APP=TOTVS \
  -e NAME_APP=protheus_app \
  -e DB_HOST=localhost \
  -e DB_ALIAS=MyDatabase \
  -e LICENSE_SERVER=license.myserver.com \
  -e LICENSE_PORT=5555 \
  -e PROTHEUS_DATA_PATH=/totvs/protheus_data \
  -e APO_PATH=/totvs/protheus/apo \
  -e CUSTOM_RPO_PATH=/totvs/protheus/apo/tttm120_custom.rpo \
  -v /totvs/protheus_data:/totvs/protheus_data \
  -v /totvs/protheus/apo:/totvs/protheus/apo \
  -p 1234:9091 \
  protheus_linux_24_3_0_4