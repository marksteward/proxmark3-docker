FROM ubuntu

RUN apt-get update && \
    apt-get -y install build-essential libbz2-dev liblz4-dev libreadline-dev gcc-arm-none-eabi libssl-dev git && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
RUN git clone https://github.com/RfidResearchGroup/proxmark3

WORKDIR /app/proxmark3
RUN make

CMD ["/app/proxmark3/pm3"]
