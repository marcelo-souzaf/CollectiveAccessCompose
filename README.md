# CollectiveAccess
Este é um repositório para o CollectiveAccess 1.7.16 usando Docker Compose, que inclui um servidor web com PHP e Apache, um servidor de banco de dados MySQL e um servidor de cache, o Redis.

## Importante
Defina as variáveis de ambiente no arquivo `.env`.
Comente `CA_CACHE_PASSWORD` se não pretende usar uma senha para o Redis, o que é inseguro para produção.
