FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    vim \
    python3 \
    python3-venv \
    curl \
    ca-certificates \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://raw.githubusercontent.com/ca1ebd/updateme/main/install.sh | bash

ENV PATH="/root/.local/bin:${PATH}"

CMD ["/bin/bash"]
