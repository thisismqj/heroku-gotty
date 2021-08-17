FROM ubuntu:latest

WORKDIR /

RUN apt update && apt install -y wget && wget https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz

EXPOSE 8080

CMD tar -xzf gotty_linux_amd64.tar.gz && ./gotty --permit-write --reconnect /bin/bash
