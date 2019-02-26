FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://10-evdev.conf"

addtask copy_evconfig after do_unpack before do_compile
do_copy_evconfig () {       
        # copy evdev config        
        cp ${WORKDIR}/10-evdev.conf ${WORKDIR}/xf86-input-evdev-2.10.3/10-evdev.conf         
}
