FROM atlassian/default-image:2

MAINTAINER Tonye Jack

RUN apt-get update && apt-get install -y --no-install-recommends jq && apt-get -y upgrade
RUN apt-get install -y python3 && apt-get install -y python3-pip
RUN pip3 install --upgrade pip && pip3 install awscli
RUN wget --no-check-certificate -q  https://raw.githubusercontent.com/petervanderdoes/gitflow-avh/develop/contrib/gitflow-installer.sh && bash gitflow-installer.sh install stable; rm gitflow-installer.sh