FROM redhat/ubi8-minimal:latest

RUN apt upgrade -y
RUN apt update -y
RUN apt install -y locate
RUN apt install -y usbutils
RUN apt install -y udev
RUN apt install -y libv4l-0 
RUN apt install -y fswebcam
RUN apt install -y gphoto2
RUN apt install -y motion 

ENV LD_PRELOAD='/usr/lib/aarch64-linux-gnu/libv4l/v4l1compat.so'