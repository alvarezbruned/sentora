FROM ubuntu:14.04
# laip | READ | file.sh

ENV DEBIAN_FRONTEND noninteractive
ENV PANEL_FQDN $HOSTNAME
ENV PUBLIC_IP ifconfig eth0 | awk '/inet /{print $2}' | cut -f2 -d':'
RUN apt-get update && apt-get install wget -y
COPY ./src/sentora_install.sh .
RUN chmod u+x sentora_install.sh
RUN ./sentora_install.sh
