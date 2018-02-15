#Build the container from cli image
FROM php:7.0-cli

# Install apps that can be used in the container
RUN apt-get update && \
    apt-get install -y sudo && \
    apt-get install -y nano && \
    apt-get install -y git && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash && apt-get install nodejs

COPY ./scripts/* /usr/local/bin/
RUN chmod +x /usr/local/bin/*
