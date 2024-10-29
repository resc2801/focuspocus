FROM busybox:latest

RUN <<EOF
apt update -y && apt upgrade -y
apt install usbutils
apt install udev
apt install libv4l-0
apt install fswebcam
apt install gphoto2
EOF
