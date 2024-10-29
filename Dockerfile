FROM redhat/ubi8-minimal:latest

#RUN sudo apt upgrade -y
#RUN sudo apt update -y
RUN sudo apt install -y locate
RUN sudo apt install -y usbutils
RUN sudo apt install -y udev
RUN sudo apt install -y libv4l-0 
RUN sudo apt install -y fswebcam
RUN sudo apt install -y gphoto2
RUN sudo apt install -y motion 

ENV LD_PRELOAD='/usr/lib/aarch64-linux-gnu/libv4l/v4l1compat.so'