FROM ubuntu:latest

RUN apt update
RUN apt install -y nodejs npm vim

WORKDIR /root
ADD .bash_aliases .
ADD .vimrc .

WORKDIR /root/docker-node
ADD package.json .
ADD index.js .
RUN npm install

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
# RUN echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list
RUN apt install -y mongodb
RUN mkdir -p /data/db
