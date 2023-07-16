FROM ubuntu:latest

RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install tzdata -y
RUN apt install -y wget
CMD wget https://raw.githubusercontent.com/jeedom/core/release/install/install.sh
CMD chmod +x install.sh
CMD ./install.sh

EXPOSE 80 443
