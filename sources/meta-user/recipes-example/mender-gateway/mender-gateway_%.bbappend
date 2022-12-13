
FILESEXTRAPATHS:prepend := "${THISDIR}/file:"
SRC_URI:append = " file://mender-gateway.conf"

do_install:append() {
    install -d ${D}/etc/mender
    install -m 600 ${WORKDIR}/mender-gateway.conf ${D}/${sysconfdir}/mender/mender-gateway.conf
}
FILE_${PN} += "/etc/mender/mender-gateway.conf"

