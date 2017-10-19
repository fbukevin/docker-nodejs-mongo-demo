FROM node:latest 

RUN apt update
RUN apt install -y vim

WORKDIR /root
ADD .bash_aliases .
ADD .vimrc .

WORKDIR /root/docker-node
ADD package.json .
ADD index.js .
RUN npm install

