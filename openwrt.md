sudo apt-get update
apt-get install -y gcc g++ binutils patch bzip2 flex bison make autoconf gettext texinfo unzip sharutils subversion libncurses5-dev ncurses-term zlib1g-dev subversion git-core gawk asciidoc libz-dev
su - developer
mkdir openwrt && cd openwrt
#预编译固件 http://downloads.openwrt.org/attitude_adjustment/12.09/  
#svn co svn://svn.openwrt.org/openwrt/branches/backfire
#cd backfire
git clone git://git.openwrt.org/openwrt.git                                  #Trunk
git clone git://git.openwrt.org/packages.git                                 #Trunk packages feed
git clone git://git.openwrt.org/14.07/openwrt.git                       #Branch
git clone git://git.openwrt.org/14.07/packages.git                      #Branch packages feed
git clone git://git.openwrt.org/12.09/openwrt.git                       #Attitude Adjustment
git clone git://git.openwrt.org/12.09/packages.git                      #Attitude Adjustment packages feed
cd AttitudeAdjustment 或branch  或trunk
#更新种子
./scripts/feeds update -a
./scripts/feeds install -a
#加shadowsocks
git clone https://github.com/shadowsocks/openwrt-shadowsocks.git package/shadowsocks-libev
#配置 官方配置https://downloads.openwrt.org/barrier_breaker/14.07/ar71xx/generic/config.ar71xx_generic
make defconfig
make menuconfig

make prereq    #检查依赖关系并编译
make  

===============================================================
OpenWrt source repository downloads
The recommended way of checking out the OpenWrt source code is cloning the Git repository using one of the following commands:
trunk (main development tree)
    Main repository: ChangeLog
    git clone git://git.openwrt.org/openwrt.git
14.07 branch (Barrier Breaker)
    Main repository: ChangeLog
    git clone git://git.openwrt.org/14.07/openwrt.git
12.09 branch (Attitude Adjustment)
    Main repository: ChangeLog
    git clone git://git.openwrt.org/12.09/openwrt.git
    Packages feed: ChangeLog
    git clone git://git.openwrt.org/12.09/packages.git
================================================================
https://dev.openwrt.org/wiki/platforms

#定制
型号:TP-Link TL-WR941ND v4     CPU：Atheros AR7240 rev 1.2 (0x00c2)  
Target System -> 4. Atheros AR7xxx/AR9xxx (TARGET_ar71xx)
Subtarget        -> 1. Generic (TARGET_ar71xx_generic)
Target Profile  -> 67. TP-LINK TL-WR941N/ND (TARGET_ar71xx_generic_TLWR941)
修改target/linux/ar71xx/image/Makefile 定制overlay大小,tmp那么大好浪费
root@Router:/www# df -h
Filesystem                Size      Used Available Use% Mounted on
rootfs                  704.0K    336.0K    368.0K  48% /
/dev/root                 2.3M      2.3M         0 100% /rom
tmpfs                    14.1M      1.1M     13.0M   8% /tmp
/dev/mtdblock3          704.0K    336.0K    368.0K  48% /overlay
overlayfs:/overlay      704.0K    336.0K    368.0K  48% /
tmpfs                   512.0K         0    512.0K   0% /dev

#懒人直刷
wget https://downloads.openwrt.org/barrier_breaker/14.07/ar71xx/generic/openwrt-ar71xx-generic-tl-wr941nd-v4-squashfs-sysupgrade.bin
mtd write openwrt-ar71xx-generic-tl-wr941nd-v4-squashfs-sysupgrade.bin linux

#中文网页界面
wget http://downloads.openwrt.org/barrier_breaker/14.07/ar71xx/generic/packages/luci/luci-i18n-chinese_0.12+svn-r10530-1_ar71xx.ipk
opkg install luci-i18n-chinese_0.12+svn-r10530-1_ar71xx.ipk

root@Router:/tmp# cat /proc/mtd 
dev:    size   erasesize  name
mtd0: 00020000 00010000 "u-boot"
mtd1: 00110600 00010000 "kernel"
mtd2: 002bfa00 00010000 "rootfs"
mtd3: 000b0000 00010000 "rootfs_data"
mtd4: 00010000 00010000 "art"
mtd5: 003d0000 00010000 "firmware"

#备份/overlay
dd if=/dev/mtd3 of=/tmp/data_backup

