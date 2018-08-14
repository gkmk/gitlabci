
FROM gitlab/dind
LABEL Name=gitlabci Version=0.0.1

ADD . /home/

WORKDIR /home
RUN git clone https://github.com/Laradock/laradock.git \
    cd laradock \
    cp env-example .env \
    docker-compose up -d nginx mysql phpmyadmin redis workspace 
