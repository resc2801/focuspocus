FROM redhat/ubi8-minimal:latest

RUN sudo apt-get update -y
RUN sudo apt-get upgrade -y
RUN sudo apt-get install -y locate
RUN sudo apt-get install -y usbutils
RUN sudo apt-get install -y udev
RUN sudo apt-get install -y libv4l-0 
RUN sudo apt-get install -y fswebcam
RUN sudo apt-get install -y gphoto2
RUN sudo apt-get install -y motion 

ENV LD_PRELOAD='/usr/lib/aarch64-linux-gnu/libv4l/v4l1compat.so'