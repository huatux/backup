---
title: Make bootable usb install media on Linux
date: 2022-07-01 01:08:57
tags: 
    - Windows
    - Installation
categories:
    - Linux
    - Kali
---
```bash
echo "g
n


+1G
n



t
1
11
t
2
11
w
"|fdisk /dev/sdb
```

```bash
mount -o loop /data/ISO/en-us_windows_11_business.iso /media/cdrom
```
```bash
mkfs.vfat /dev/sdb1
mkfs.ntfs -Q /dev/sdb2
```
```bash
mkdir -pv /tmp/{vfat,ntfs}
```
```bash
mount -t vfat /dev/sdb1 /tmp/vfat/
mount -t ntfs /dev/sdb2 /tmp/ntfs/
```
```bash
rsync -avz --exclude=sources/ /media/cdrom/* /tmp/vfat/
rsync -avz --exclude=boot.wim /media/cdrom/sources/* /tmp/ntfs/sources/
mkdir /tmp/vfat/sources/
cp /media/cdrom/sources/boot.wim /tmp/vfat/sources/
umount /tmp/vfat
umount /tmp/ntfs
rm -rf vfat ntfs
```
