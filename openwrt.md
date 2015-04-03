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
#配置
make defconfig
make menuconfig

make prereq    #检查依赖关系并编译
make  

#定制
型号TP-Link TL-WR941ND v4     CPU：Atheros AR7240 rev 1.2 (0x00c2)  
Target System -> 4. Atheros AR7xxx/AR9xxx (TARGET_ar71xx)
Subtarget        -> 1. Generic (TARGET_ar71xx_generic)
Target Profile  -> 67. TP-LINK TL-WR941N/ND (TARGET_ar71xx_generic_TLWR941)

===============================================================
OpenWrt source repository downloads
The recommended way of checking out the OpenWrt source code is cloning the Git repository using one of the following commands:
trunk (main development tree)
    Main repository: ​ChangeLog
    git clone git://git.openwrt.org/openwrt.git
14.07 branch (Barrier Breaker)
    Main repository: ​ChangeLog
    git clone git://git.openwrt.org/14.07/openwrt.git
12.09 branch (Attitude Adjustment)
    Main repository: ​ChangeLog
    git clone git://git.openwrt.org/12.09/openwrt.git
    Packages feed: ​ChangeLog
    git clone git://git.openwrt.org/12.09/packages.git
================================================================
https://dev.openwrt.org/wiki/platforms

