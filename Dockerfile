FROM php:8.2-apache

RUN docker-php-ext-install pdo pdo_mysql mysqli

COPY . /var/www/html
WORKDIR /var/www/html

EXPOSE 80
CMD ["apache2-foreground"]
