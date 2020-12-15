FROM php:7.3-fpm

# install xdebug
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

RUN echo "xdebug.mode = 'coverage'" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
