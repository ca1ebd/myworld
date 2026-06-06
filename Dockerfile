FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    vim \
    python3 \
    python3-venv \
    curl \
    ca-certificates \
    git \
    sudo \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash dev \
    && echo "dev ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/dev \
    && chmod 0440 /etc/sudoers.d/dev

USER dev
WORKDIR /home/dev

RUN curl -fsSL https://raw.githubusercontent.com/ca1ebd/updateme/main/install.sh | bash

ENV PATH="/home/dev/.local/bin:${PATH}"

RUN mkdir -p /home/dev/Development

RUN echo 'export PS1="\u@\h:\w\$ "' >> /home/dev/.bashrc

CMD ["/bin/bash"]
