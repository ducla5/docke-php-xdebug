FROM php:7.3-fpm

# install xdebug
RUN pecl install xdebug
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd
RUN docker-php-ext-enable xdebug

RUN echo "xdebug.mode = 'coverage'" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
