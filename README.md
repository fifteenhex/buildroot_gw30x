# buildroot_gw30x
Buildroot for MYZR GW300/302


## UBI setup

```
ubiformat /dev/mtd1
ubiattach -m 1
ubimkvol /dev/ubi0 -N kernel -s 16MiB
ubimkvol /dev/ubi0 -N rescue -s 16MiB
ubimkvol /dev/ubi0 -N rootfs -s 64MiB

tftp -g -r rootfs.squashfs x.x.x.x

ubiupdatevol /dev/ubi0_2 rootfs.squashfs
```
