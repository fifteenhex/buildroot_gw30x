BUILDROOT_ARGS += BR2_DEFCONFIG=../br2gw30x/configs/gw30x_defconfig

all: buildroot copy_outputs

include ./br2secretsauce/common.mk

copy_outputs:
	cp buildroot/output/images/rootfs.squashfs $(OUTPUTS)
