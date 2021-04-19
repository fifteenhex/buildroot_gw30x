#!/bin/sh

curl -L "https://github.com/wireless-tag-com/openwrt-ssd20x/blob/main/images/SSD202_openwrt.bin?raw=true" | \
	dd iflag=fullblock of=ipl.bin skip=1280 bs=1K count=64
