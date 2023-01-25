FROM php:7.4.33-apache

# Instala dependências do sistema
RUN apt-get update && apt-get install -y --no-install-recommends \
    graphicsmagick \
    libgraphicsmagick1-dev \
    ffmpeg \
    ghostscript \
    poppler-utils \
    mediainfo \
    libreoffice \
    libcurl4-openssl-dev \
    libzip-dev

# Instala extensões do PHP
RUN docker-php-source extract && \
    docker-php-ext-install curl && \
    docker-php-ext-enable curl && \
    docker-php-ext-install gd && \
    docker-php-ext-enable gd && \
    docker-php-ext-install mysqli && \
    docker-php-ext-enable mysqli && \
    docker-php-ext-install opcache && \
    docker-php-ext-enable opcache && \
    docker-php-ext-install sockets && \
    docker-php-ext-enable sockets && \
    pecl install -f zip && \
    docker-php-ext-enable zip && \
    pecl install -f redis && \
    docker-php-ext-enable redis && \
    pecl install -f gmagick-2.0.6RC1 && \
    docker-php-ext-enable gmagick && \
    docker-php-source delete
