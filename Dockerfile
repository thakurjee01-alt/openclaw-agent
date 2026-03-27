FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl wget nodejs npm supervisor \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sSL https://emergent.sh/install/openclaw | bash

EXPOSE 18789

CMD ["/root/.openclaw-bin/openclaw", "gateway", "start"]
