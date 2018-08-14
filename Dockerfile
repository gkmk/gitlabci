
FROM gitlab/dind
LABEL Name=gitlabci Version=0.0.1

RUN sudo apt-get update && sudo apt-get upgrade -y

ADD . /home/

WORKDIR /home
RUN git clone https://github.com/Laradock/laradock.git;
WORKDIR /home/laradock
RUN cp env-example .env
RUN docker-compose up -d nginx mysql phpmyadmin redis workspace 
