ARG  CODE_VERSION=latest
FROM busybox:$(CODE_VERSION)

RUN <<EOF
apt update -y && apt upgrade -y
apt install libv4l-0
apt install fswebcam
apt install gphoto2
EOF
