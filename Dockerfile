FROM debian

RUN apt-get update
RUN apt-get -y install git apache2

COPY index.html /var/www/html/

CMD apachectl -e info -DFOREGROUND

