FROM debian:9

CMD apt update && apt install -y wget
CMD wget https://raw.githubusercontent.com/jeedom/core/release/install/install.sh
CMD chmod +x install.sh && ./install.sh

EXPOSE 80 443
