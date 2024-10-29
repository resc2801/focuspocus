FROM debian:bookworm-slim

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y \
    locate \
    libv4l-0 \
    v4l-utils \
    usbutils \
    udev \
    fswebcam \
    motion \
    gphoto2

ENV LD_PRELOAD='/usr/lib/aarch64-linux-gnu/libv4l/v4l1compat.so'