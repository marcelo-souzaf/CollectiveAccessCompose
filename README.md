# CollectiveAccess
Este é um repositório para o CollectiveAccess 1.7.16 usando Docker Compose, que inclui um servidor web com PHP e Apache, um servidor de banco de dados MySQL e um servidor de cache, o Redis.

Todo o processo foi pensado para um sistema operacional baseado em Unix, capaz de executar scripts em Bash. A instalação foi testado em um sistema operacional Ubuntu 22.04.2 LTS.

O repositório também conta com uma tradução feita por uma única pessoa com ajuda do GitHub Copilot para o português brasileiro. Sua instalação é feita nas últimas linhas do arquivo `download_and_install_ca.sh`.

Também está disponível o arquivo `install_docker.sh`, que instala o Docker e o Docker Compose no sistema operacional. Para executar os containers, basta executar o comando `docker-compose up -d` na pasta raiz do projeto (-d é opcional e executa em segundo plano).

## Importante
Defina as variáveis de ambiente no arquivo `.env`.
O arquivo `download_and_install_ca.sh` não lida com atualizações para novas versões, apenas a instalação inicial. Comente as últimas linhas para não instalar a tradução para o português brasileiro.
