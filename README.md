# buildroot_gw30x
Buildroot for MYZR GW300/302


## UBI setup

```
ubiformat /dev/mtd1
ubiattach -m 1
ubimkvol /dev/ubi0 -N uboot  -s 1MiB	-t static
ubimkvol /dev/ubi0 -N env    -s 256KiB
ubimkvol /dev/ubi0 -N kernel -s 16MiB
ubimkvol /dev/ubi0 -N rescue -s 16MiB
ubimkvol /dev/ubi0 -N rootfs -s 64MiB

tftp -b 16384 -g -r gw302-kernel.fit x.x.x.x
tftp -b 16384 -g -r gw302-rootfs.squashfs x.x.x.x

ubiupdatevol /dev/ubi0_2 gw302-kernel.fit
ubiupdatevol /dev/ubi0_4 gw302-rootfs.squashfs
```
