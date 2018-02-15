FROM php:7.0-cli

RUN apt-get update && \
    apt-get install -y sudo && \
    apt-get install -y git

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash && apt-get install nodejs
