FROM debian:jessie
MAINTAINER Ignacio Roncero Bazarra <ironcero@gmail.com>

# Expose port
EXPOSE 80

# Install apache2
RUN apt-get update && apt-get -y install \
    apache2

VOLUME ["/var/www/html"]


CMD service apache2 start && tail -f /var/log/apache2/access.log /var/log/apache2/error.log