FROM ubuntu:14.04
# laip | READ | file.sh

ENV DEBIAN_FRONTEND noninteractive
ENV PANEL_FQDN vps195115.ovh.net
ENV PUBLIC_IP 192.168.99.100
RUN apt-get update && apt-get install wget -y
COPY ./src/sentora_install.sh .
RUN chmod u+x sentora_install.sh
RUN echo $HOSTNAME
RUN ./sentora_install.sh