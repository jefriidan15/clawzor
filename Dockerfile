FROM ubuntu:22.04

RUN apt update && apt install -y curl git bash nodejs npm

WORKDIR /root

RUN git clone https://github.com/L13N6/clawzor.git

WORKDIR /root/clawzor

RUN chmod +x setup.sh

CMD bash -c "./setup.sh && clawzor start && tail -f /dev/null"
