# protheus_docker
# protheus_docker

docker run -d \
  --name protheus_base_gabriel \
  -e SPECIAL_KEY=base_gabriel \
  -e ENV_APP=TOTVS \
  -e NAME_APP=base_gabriel \
  -e DB_HOST=professorx.insider.testes \
  -e DB_ALIAS=base_gabriel \
  -e LICENSE_SERVER=professorx.insider.testes \
  -e LICENSE_PORT=5555 \
  -v /home/antunesls/ambientes/base_gabriel/data:/totvs/protheus_data \
  -v /home/antunesls/ambientes/base_gabriel/apo:/totvs/protheus/apo \
  -p 9091:1234 \
  -p 9092:4321 \
  protheus_linux_24_3_0_4