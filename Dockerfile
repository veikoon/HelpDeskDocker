FROM php:7.2-apache

COPY html/ /var/www/html

RUN chmod 666 /var/www/html/hesk_settings.inc.php

RUN chmod 777 -R /var/www/html/attachments

RUN chmod 777 -R /var/www/html/cache

RUN docker-php-ext-install mysqli
