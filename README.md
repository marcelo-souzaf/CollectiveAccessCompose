# CollectiveAccess
Este é um repositório para o CollectiveAccess 1.7.16 usando Docker Compose, que inclui um servidor web com PHP e Apache, um servidor de banco de dados MySQL e um servidor de cache, o Redis.
Todo o processo foi pensado para um sistema operacional Linux.
O repositório também conta com uma tradução feita por uma única pessoa com ajuda do GitHub Copilot em uma semana (portanto cheia de defeitos) para o português brasileiro. Sua instalação é feita nas últimas do arquivo `download.sh`.

## Importante
Defina as variáveis de ambiente no arquivo `.env`.
O arquivo `download.sh` não lida com atualizações para novas versões, apenas a instalação inicial. Comente as últimas linhas para não instalar a tradução para o português brasileiro.
