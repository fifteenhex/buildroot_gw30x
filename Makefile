PREFIX = gw30x
DEFCONFIG = ../br2gw30x/configs/gw30x_defconfig
EXTERNALS +=../br2autosshkey ../br2gw30x
TOOLCHAIN = arm-buildroot-linux-gnueabihf_sdk-buildroot.tar.gz

all: buildroot copy_outputs

bootstrap:
	git submodule init
	git submodule update

./br2secretsauce/common.mk: bootstrap

include ./br2secretsauce/common.mk

copy_outputs:
	cp buildroot/output/images/ipl $(OUTPUTS)/gw302-ipl
	cp buildroot/output/images/u-boot.img $(OUTPUTS)/gw302-u-boot.img
	cp buildroot/output/images/kernel.fit $(OUTPUTS)/gw302-kernel.fit
	cp buildroot/output/images/rootfs.squashfs $(OUTPUTS)/gw302-rootfs.squashfs
