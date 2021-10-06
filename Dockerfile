FROM atlassian/default-image:2
# FROM node:14-buster

RUN apt-get update && apt-get install -y python3-dev python3-pip
RUN pip3 install --upgrade pip setuptools wheel
RUN pip3 install awscli
RUN pip3 install aws-sam-cli

ENTRYPOINT /bin/bash