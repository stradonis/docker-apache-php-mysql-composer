FROM php:8.0-apache
RUN docker-php-ext-install mysqli pdo_mysql
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN apt-get update \
    && apt-get install -y libzip-dev \
    && apt-get install -y zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip \
    && apt-get update \
    && apt-get install -y curl gnupg \
    && curl -sL https://deb.nodesource.com/setup_14.x  | bash - \
    && apt-get -y install nodejs

#prepare vhosts
CMD echo "ServerName localhost" >> /etc/apache2/apache2.conf
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

COPY apache2/apache_default /etc/apache2/sites-available/000-default.conf
COPY apache2/example-domain.local.conf /etc/apache2/sites-available/example-domain.local.conf

RUN a2ensite example-domain.local.conf

#enable apache modules
RUN a2enmod rewrite
RUN service apache2 restart

EXPOSE 80



