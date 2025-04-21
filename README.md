# Init New Ambiente

 sudo cp -r /home/antunesls/padrao /home/antunesls/ambientes/testes

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


  docker run -d \
  --name protheus_bosform \
  -e SPECIAL_KEY=bosform \
  -e ENV_APP=TOTVS \
  -e NAME_APP=bosform \
  -e DB_HOST=professorx.insider.testes \
  -e DB_ALIAS=bosform \
  -e LICENSE_SERVER=professorx.insider.testes \
  -e LICENSE_PORT=5555 \
  -v /home/antunesls/ambientes/bosform/data:/totvs/protheus_data \
  -v /home/antunesls/ambientes/bosform/apo:/totvs/protheus/apo \
  -p 9191:1234 \
  -p 9192:4321 \
  protheus_linux_24_3_0_4

    docker run -d \
  --name protheus_gestao \
  -e SPECIAL_KEY=gestao \
  -e ENV_APP=TOTVS \
  -e NAME_APP=gestao \
  -e DB_HOST=professorx.insider.testes \
  -e DB_ALIAS=gestao \
  -e LICENSE_SERVER=professorx.insider.testes \
  -e LICENSE_PORT=5555 \
  -v /home/antunesls/ambientes/gestao/data:/totvs/protheus_data \
  -v /home/antunesls/ambientes/gestao/apo:/totvs/protheus/apo \
  -p 9291:1234 \
  -p 9292:4321 \
  protheus_linux_24_3_0_4

      docker run -d \
  --name protheus_testes \
  -e SPECIAL_KEY=testes \
  -e ENV_APP=TOTVS \
  -e NAME_APP=testes \
  -e DB_HOST=professorx.insider.testes \
  -e DB_ALIAS=testes \
  -e LICENSE_SERVER=professorx.insider.testes \
  -e LICENSE_PORT=5555 \
  -v /home/antunesls/ambientes/testes/data:/totvs/protheus_data \
  -v /home/antunesls/ambientes/testes/apo:/totvs/protheus/apo \
  -p 9391:1234 \
  -p 9392:4321 \
  protheus_linux_24_3_0_4