FROM busybox:latest

RUN apt --yes update
RUN apt --yes upgrade
RUN apt --yes install usbutils
RUN apt --yes install udev
RUN apt --yes install libv4l-0
RUN apt --yes install fswebcam
RUN apt --yes install gphoto2
