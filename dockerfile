FROM php:8.0-apache

COPY /app /var/www/html

WORKDIR /var/www/html/


# FROM php:8.0-apache
# COPY . /var/www/html/

# EXPOSE 80