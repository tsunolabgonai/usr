FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update  \
    && apt-get -y install \
        iproute2  \
        iputils-ping \
        vim \
        # 
        conntrack \
        mtr-tiny  \
        netcat \
        procps \
        tcpdump   \
        software-properties-common

RUN add-apt-repository ppa:deadsnakes/ppa

RUN apt install -y python3.9 curl python3-distutils

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

RUN python3 get-pip.py

RUN pip3 install scapy

CMD ["/bin/bash"]
