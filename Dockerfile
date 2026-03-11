FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    curl \
    git \
    bash \
    nodejs \
    npm

WORKDIR /app

RUN git clone https://github.com/L13N6/clawzor.git .

RUN chmod +x setup.sh

RUN ./setup.sh

CMD ["bash","-c","npx openclaw gateway"]
