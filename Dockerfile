FROM ubuntu:22.04

RUN apt update && apt install -y curl git bash

WORKDIR /app

RUN git clone https://github.com/L13N6/clawzor.git .

RUN chmod +x setup.sh

CMD bash -c "./setup.sh && clawzor start"
