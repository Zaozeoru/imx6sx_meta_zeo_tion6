SUMMARY = "Linux kernel for ZAO ZEO imx6 boards"

FILESEXTRAPATHS_prepend := "${THISDIR}/linux-imx-4.9.11:"

SRC_URI = "git://github.com/Zaozeoru/imx6sx_kernel_4.9.git;branch=${SRCBRANCH} \
           file://defconfig \
"

LOCALVERSION = "-1.0.0-ga+yocto"
SRCBRANCH = "imx_4.9.11_1.0.0_ga"
#SRCREV = "9b3ba8e88b8868b5ae19ba665c58c7776a43e963"
SRCREV = "${AUTOREV}"

addtask copy_defconfig after do_unpack before do_preconfigure
do_copy_defconfig () {
    install -d ${B}
    if [ ${DO_CONFIG_V7_COPY} = "yes" ]; then
        # copy latest imx_v7_defconfig to use for mx6, mx6ul and mx7
        mkdir -p ${B}
        cp ${WORKDIR}/defconfig ${B}/.config
    fi       
}
