FROM cimg/node:16.19.0

LABEL Author="Guillaume MOCQUET"

RUN sudo apt-get update && \
    sudo apt-get install -yq --no-install-recommends \
        build-essential \
        libssl-dev \
        libffi-dev \
        python3 \
        python3-dev \
        python3-pip \
    && \
    sudo apt-get install -yq --no-install-recommends \
        jq \
    && \
    sudo npm update -g npm@latest && \
    sudo pip install --upgrade pip setuptools wheel && \
    sudo rm -rf /var/lib/apt/lists/*

RUN sudo npm install -g serverless@3.27.0
RUN sudo pip install awscli==1.27.64
