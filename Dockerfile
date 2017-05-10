FROM debian

RUN apt-get update
RUN apt-get install git-core
RUN apt-get install apache2 
