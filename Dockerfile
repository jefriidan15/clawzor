FROM node:22

WORKDIR /app

RUN apt update && apt install -y git curl bash

RUN git clone https://github.com/L13N6/clawzor.git .

RUN chmod +x setup.sh

RUN ./setup.sh

CMD ["npx","openclaw","gateway"]
