FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive
RUN apt update
RUN apt install php -y
RUN apt install composer -y
RUN apt install npm -y
RUN apt install nodejs -y

COPY . .

RUN rm composer.lock
RUN composer install

ENTRYPOINT php artisan server
