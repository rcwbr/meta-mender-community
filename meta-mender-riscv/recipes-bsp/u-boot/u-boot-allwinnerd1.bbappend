require recipes-bsp/u-boot/u-boot-allwinnerd1-mender-common.inc
require recipes-bsp/u-boot/u-boot-mender.inc

FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}:"

SRC_URI:append:nezha-allwinner-d1 = " \
    file://0001-add-mender-related-config-items.patch \
"

MENDER_UBOOT_AUTO_CONFIGURE:nezha-allwinner-d1 = "0"

PROVIDES += "u-boot"
