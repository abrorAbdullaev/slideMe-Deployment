#
# Nginx Dockerfile with needed toos for informe project
#
# https://github/dockerfile/nginx
#

# Pull base image.
FROM dockerfile/ubuntu

# Install Nginx, nano, php7.0
RUN \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/list/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx;

# Adding default vhost config
COPY ./files/default /etc/nginx/sites-available/
# Basic auth file
COPY ./files/.htpasswd /etc/nginx/

# Define working directory
WORKDIR /etc/nginx

#Define default command 
CMD ["nginx"]

EXPOSE 80
EXPOSE 443
