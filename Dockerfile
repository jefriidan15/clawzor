FROM ubuntu:22.04

RUN apt update && apt install -y curl git bash

RUN curl -fsSL https://raw.githubusercontent.com/L13N6/clawzor/main/setup.sh | bash

CMD ["clawzor","start"]
