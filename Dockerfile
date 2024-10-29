FROM alpine:latest

RUN apk upgrade
RUN apk add locate
RUN apk add usbutils
RUN apk add udev
RUN apk add libv4l-0 
RUN apk add fswebcam
RUN apk add gphoto2
RUN apk add motion 

ENV LD_PRELOAD='/usr/lib/aarch64-linux-gnu/libv4l/v4l1compat.so'