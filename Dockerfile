FROM busybox:latest

RUN apt-get --yes update
RUN apt-get --yes upgrade
RUN apt-get --yes install usbutils
RUN apt-get --yes install udev
RUN apt-get --yes install libv4l-0
RUN apt-get --yes install fswebcam
RUN apt-get --yes install gphoto2
