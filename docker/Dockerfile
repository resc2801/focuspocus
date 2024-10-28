FROM busybox:lastest

LABEL org.opencontainers.image.authors="René Schubotz"
LABEL org.opencontainers.image.source="https://github.com/resc2801/focuspocus/"

RUN apt update -y && apt upgrade -y

RUN apt install libv4l-0
RUN apt install fswebcam
RUN apt install gphoto2

