all: buildroot copy_outputs

include ./br2secretsauce/common.mk

copy_outputs:
	cp buildroot/output/images/rootfs.squashfs $(OUTPUTS)
