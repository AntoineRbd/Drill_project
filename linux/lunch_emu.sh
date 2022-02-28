#!/bin/sh

qemu-system-arm \
  -M versatilepb \
  -m 128 \
  -kernel arch/arm/boot/zImage \
  -dtb arch/arm/boot/dts/versatile-pb.dtb \
  -initrd rootfs.cpio.gz \
  -serial stdio \
  -append "console=ttyAMA0,115200 initrd=/bin/bash"
