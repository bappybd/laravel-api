FROM php:7.2.2-fpm
	
RUN apt-get update && apt-get install -y mysql-client --no-install-recommends \
 && docker-php-ext-install pdo_mysql
 
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

#Install git
RUN apt-get update \
    && apt-get install -y git