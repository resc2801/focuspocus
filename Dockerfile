FROM arm64v8/debian:bookworm-slim

RUN apt-get update 
RUN apt-get upgrade 

RUN apt-get install -y --no-install-recommends \
    sudo \
    ca-certificates \
    findutils \
    gnupg \
    dirmngr \
    inetutils-ping \
    netbase \
    curl \
    udev \
    procps 

RUN apt-get install -y --no-install-recommends \
    locate \
    libv4l-0 \
    v4l-utils \
    usbutils \
    udev \
    fswebcam \
    motion \
    gphoto2

ENV LD_PRELOAD='/usr/lib/aarch64-linux-gnu/libv4l/v4l1compat.so'