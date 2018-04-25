FROM php:7.2.2-fpm
	
RUN apt-get update && apt-get install -y mysql-client --no-install-recommends \
 && docker-php-ext-install pdo_mysql
 
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

#Install git
RUN apt-get update \
    && apt-get install -y git

# Install zip extension
RUN apt-get install zip unzip

# Run Laravel initial installtion
#RUN composer install
#RUN chown -R www-data:www-data storage
#RUN php artisan key:generate
#RUN php artisan migrate
#RUN php artisan optimize



