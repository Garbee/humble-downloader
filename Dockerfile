FROM ubuntu:focal-20220113
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    git \
    python3 \
    python3-pip
RUN cd /opt && \
    git clone https://github.com/xtream1101/humblebundle-downloader.git humblebundle-downloader && \
    pip3 install humblebundle-downloader && \
    mkdir /opt/downloads
COPY ./entrypoint.sh /entrypoint.sh
VOLUME ["/opt/downloads"]
ENTRYPOINT ["/entrypoint.sh"]
