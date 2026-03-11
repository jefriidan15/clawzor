FROM ubuntu:22.04

RUN apt update && apt install -y curl git bash

RUN git clone https://github.com/L13N6/clawzor.git
WORKDIR /clawzor

RUN chmod +x setup.sh
RUN ./setup.sh

CMD bash
