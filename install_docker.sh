#! /bin/bash

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Obtém a última versão do docker-compose em uma string, por exemplo, "tag_name": "v2.20.2",
TAG=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep "tag_name")
# Remove os caracteres desnecessários (sujeito a falhas futuras)
VERSION=${TAG:15:-2}
echo "Installing docker-compose version $VERSION"

# Instala a versão obtida
curl -L "https://github.com/docker/compose/releases/download/$VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# Dá permissão de execução
sudo chmod +x /usr/local/bin/docker-compose
