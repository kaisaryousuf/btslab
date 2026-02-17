FROM php:5.6-apache

RUN docker-php-ext-install mysql mysqli pdo pdo_mysql

RUN a2enmod rewrite include

RUN { \
    echo 'display_errors = On'; \
    echo 'error_reporting = E_ALL & ~E_DEPRECATED'; \
    echo 'allow_url_fopen = On'; \
    echo 'allow_url_include = On'; \
    echo 'file_uploads = On'; \
    echo 'upload_max_filesize = 10M'; \
    echo 'post_max_size = 10M'; \
    } > /usr/local/etc/php/conf.d/btslab.ini

COPY . /var/www/html/btslab/
COPY redirect.php /var/www/html/index.php

RUN chown -R www-data:www-data /var/www/html/btslab/ \
    && chmod -R 755 /var/www/html/btslab/ \
    && chmod -R 777 /var/www/html/btslab/vulnerability/uploads/ \
    && chmod -R 777 /var/www/html/btslab/vulnerability/avatar/ \
    && chmod -R 777 /var/www/html/btslab/tmp/

EXPOSE 80
