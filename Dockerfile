FROM php:7.2

RUN docker-php-ext-install mbstring
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install json
RUN docker-php-ext-install sockets

RUN apt-get update && apt-get install -y zlib1g-dev
RUN docker-php-ext-install zip

RUN apt-get install -y libssl-dev libcurl4-openssl-dev pkg-config
RUN docker-php-ext-install curl

RUN apt-get install -y libicu-dev
RUN docker-php-ext-install intl

RUN apt-get install -y libxml2-dev
RUN docker-php-ext-install soap

RUN docker-php-ext-install calendar
RUN docker-php-ext-install dom
RUN docker-php-ext-install ftp
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pcntl
RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install phar
RUN docker-php-ext-install simplexml
RUN docker-php-ext-install xml

RUN pecl install mongodb && docker-php-ext-enable mongodb

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
