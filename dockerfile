# Use a imagem base Alpine, última versão estável
FROM opensuse/leap:15.6

# Atualize o repositório de pacotes e instale pacotes essenciais
RUN zypper refresh && zypper install -y \
    bash \
    curl \
    gettext

# Crie as pastas /totvs/protheus/apo
RUN mkdir /totvs
RUN mkdir /totvs/protheus
RUN mkdir /totvs/protheus/apo
RUN mkdir /totvs/protheus/bin
RUN mkdir /totvs/protheus/bin/log

# Copie os arquivos da pasta bin para dentro da pasta /totvs/protheus/bin
COPY bin /totvs/protheus/bin

# Copie o arquivo appserver.ini para dentro do container
COPY appserver.ini /totvs/protheus/bin/appserver_base.ini

RUN mkdir /protheus_data

# Permitir execução do arquivo appsrvlinux
RUN chmod +x /totvs/protheus/bin/appsrvlinux

# Defina o diretório de trabalho
WORKDIR /totvs/protheus/bin

# Execute o script configure_ini.py
RUN envsubst < appserver_base.ini > appserver.ini

RUN /bin/sh

# Comando padrão para executar quando o container iniciar
CMD ["./appsrvlinux"]
