
FROM gitlab/dind
LABEL Name=gitlabci Version=0.0.1

ADD . /home/

WORKDIR /home/laradock
RUN docker-compose up -d nginx mysql phpmyadmin redis workspace 
