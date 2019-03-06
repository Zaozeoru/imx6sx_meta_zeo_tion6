SUMMARY = "A console-only image that fully supports the target device \
hardware and some additional features."

IMAGE_FEATURES += "splash package-management"

LICENSE = "MIT"

inherit core-image

# for ffmpeg
LICENSE_FLAGS_WHITELIST += "commercial"

IMAGE_INSTALL_append = " e2fsprogs-mke2fs i2c-tools alsa-utils alsa-utils-aplay  imx-test strace util-linux mtd-utils minicom setserial ethtool iperf3 tcpdump net-tools can-utils iproute2 evtest fb-test fbida python3  python3-pip v4l-utils ffmpeg openssh-ssh openssh-sshd openssh-scp openssh-sftp tzdata"
# CORE_IMAGE_EXTRA_INSTALL
