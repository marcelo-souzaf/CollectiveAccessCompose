FROM redis:6.2.7

# Copia o arquivo de configuração do Redis para o contâiner
COPY redis.conf /usr/local/etc/redis/redis.conf

# Usa a variável de ambiente CA_CACHE_PASSWORD como argumento
ARG REDIS_PASSWORD

# Se a senha foi definida, ela é exigida para acessar o Redis
RUN if [ ${REDIS_PASSWORD} != "" ]; \
    then echo "requirepass ${REDIS_PASSWORD}" >> /usr/local/etc/redis/redis.conf; \
fi

EXPOSE 6379
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
