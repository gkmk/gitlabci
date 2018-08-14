
FROM gitlab/dind
LABEL Name=gitlabci Version=0.0.1

RUN apt-get update && apt-get upgrade

ADD . /home/

WORKDIR /home
RUN git clone https://github.com/Laradock/laradock.git;
WORKDIR /home/laradock
RUN cp env-example .env
RUN docker-compose up -d nginx mysql phpmyadmin redis workspace 
