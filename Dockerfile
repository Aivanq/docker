FROM ubuntu:latest
RUN apt update && apt install apache2
ADD  holamon.html /var/www/html/index.html
