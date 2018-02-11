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
  add-apt-repository ppa:ondrej/php && \
  apt-get update && \
  apt-get install -y --force-yes nano && \
  apt-get install -y --force-yes nginx && \
  rm -rf /var/lib/apt/list/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx;

COPY ./nginx/default /etc/nginx/sites-available/

# Basic auth file
COPY ./nginx/.htpasswd /etc/nginx/

# Define working directory
WORKDIR /etc/nginx

#Define default command 
CMD ["nginx"]

EXPOSE 80
EXPOSE 443
