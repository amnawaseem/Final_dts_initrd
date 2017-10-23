#!/bin/bash

cd /home/amna/Thesis/initrd/
find . | cpio -H newc -o > ../initramfs.cpio
cd /home/amna/Thesis
cat initramfs.cpio | gzip > initramfs-debug.gz
cp initramfs-debug.gz /home/amna/Thesis/Phidias_access
cd /home/amna/Thesis/Phidias_access
size=$(du -b /home/amna/Thesis/Phidias_access/initramfs-debug.gz | awk '{print $1}')
echo $size
var1=$size
sum=$((var1 + 167772160))
echo "obase=16; $sum"| bc


