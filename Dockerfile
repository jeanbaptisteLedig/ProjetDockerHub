FROM debian

RUN apt-get update
RUN apt-get -y install git apache2

CMD apachectl -e info -DFOREGROUND

