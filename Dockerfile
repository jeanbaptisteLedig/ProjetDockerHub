FROM debian

RUN apt-get update
RUN apt-get -y install git apache2

CMD /etc/init.d/apache2 start && tail -f /var/log/apache2/access.log
