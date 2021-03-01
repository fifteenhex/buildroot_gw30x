BUILDROOT_ARGS += BR2_DEFCONFIG=../br2gw30x/configs/gw30x_defconfig
EXTERNALS +=../br2autosshkey ../br2gw30x

all: buildroot copy_outputs

include ./br2secretsauce/common.mk

copy_outputs:
	cp buildroot/output/images/ipl $(OUTPUTS)/gw302-ipl
	cp buildroot/output/images/u-boot.img $(OUTPUTS)/u-boot.img
	cp buildroot/output/images/kernel.fit $(OUTPUTS)/gw302-kernel.fit
	cp buildroot/output/images/rootfs.squashfs $(OUTPUTS)/gw302-rootfs.squashfs
