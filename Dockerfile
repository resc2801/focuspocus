FROM redhat/ubi8-minimal:latest

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y locate
RUN apt-get install -y usbutils
RUN apt-get install -y udev
RUN apt-get install -y libv4l-0 
RUN apt-get install -y fswebcam
RUN apt-get install -y gphoto2
RUN apt-get install -y motion 

ENV LD_PRELOAD='/usr/lib/aarch64-linux-gnu/libv4l/v4l1compat.so'