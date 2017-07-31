# Apache Docker Image
This repository contains a dockerfile to build authomatic image with apache2. This image expose 80 port to access and has a volume in /var/www/html

## How to use this image
To run a new container with this image you only need to execute:

`docker run -d --rm -p 80:80 --name apache2 ironcero/apache2`

If you want a persisten volume on container you'll need to execute:

`docker run -d --rm -p 80:80 -v PATH:/var/www/html --name apache2 ironcero/apache2`