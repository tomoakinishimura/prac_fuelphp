FROM php:7.1.7-apache
LABEL maintainer "nisitomo"
ENV LANG C.UTF-8
ENV APP_ROOT /var/www

WORKDIR $APP_ROOT

RUN docker-php-ext-install pdo_mysql mysqli
RUN a2enmod vhost_alias && a2enmod rewrite && service apache2 restart

EXPOSE 80
