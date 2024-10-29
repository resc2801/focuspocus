FROM busybox:latest

RUN sudo apt full-upgrade -y
RUN apt install -y \
    locate \
    usbutils \
    udev \
    libv4l-0 \
    fswebcam \
    gphoto2 \
    motion 


ENV LD_PRELOAD='/usr/lib/aarch64-linux-gnu/libv4l/v4l1compat.so'