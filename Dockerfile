FROM ubuntu:bionic-20200403
WORKDIR /root
RUN apt -y update && apt -y install vim openjdk-8-jre-headless perl wget python3 python3-pip
COPY . .