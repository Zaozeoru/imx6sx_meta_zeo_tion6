SUMMARY = "A console-only image that fully supports the target device \
hardware and some additional features."

IMAGE_FEATURES += "splash"

LICENSE = "MIT"

inherit core-image

#test which variant is right
IMAGE_INSTALL_append = " e2fsprogs-mke2fs ethtool"
#CORE_IMAGE_EXTRA_INSTALL += "e2fsprogs-mke2fs ethtool"
