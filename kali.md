Kali 安装＆配置

#本文假设你在新装好的kali linux环境下…命令之前的说明带#的,表示需要root权限执行,带$的,表示普通用户权限。
#安装好Kali后为系统添加一个新用户,建议设置密码和root的一样,以后默认都用这个用户登录系统,需要执行一次性的高权限命令时用sudo,执行一系列高权限命令时用su -。
useradd -m -G video,audio,cdrom,sudo -s /bin/bash 用户名
passwd 用户名

#设置IP,kali默认使用了dhcp,如果你想设置静态IP修改/etc/network/interfaces,修改过interfaces文件后网络管理器上会显示设备未托管,所以修改/etc/NetworkManager/NetworkManager.conf
sed -i 's/iface eth0 inet dhcp/iface eth0 inet static/' /etc/network/interfaces
cat >> /etc/network/interfaces << EOF
address 192.168.1.2       #静态IP地址
netmask 255.255.255.0     #掩码
gateway 192.168.1.1       #网关地址
EOF
sed -i 's/managed=false/managed=true/' /etc/NetworkManager/NetworkManager.conf
/etc/init.d/networking restart    #使网络配置生效

#配置DNS和源,这里用的是官方源,有需要也可以添加自己喜欢的源
cat > /etc/resolv.conf << EOF
nameserver 8.8.8.8
nameserver 8.8.4.4
EOF
cat > /etc/apt/sources.list << EOF
deb http://http.kali.org/kali kali main non-free contrib
deb-src http://http.kali.org/kali kali main non-free contrib
deb http://security.kali.org/kali-security kali/updates main contrib non-free
EOF

#网络配置好了,接来下把系统更新到最新
apt-get update
apt-get upgrade

#安装输入法,个人习惯选择ibus,按自己的习惯安装输入法.重启后右键点击右上角的输入法图标->首选项->输入法+中文->高级(勾上所有程序共享使用同一个输入法).但是现在先不重启,重启后记得设置就行.
apt-get install ibus ibus-googlepinyin

#安装各种源里常用的软件,以下是我的习惯…
apt-get install gedit emacs pidgin pidgin-otr iceweasel-l10n-zh-cn icedove icedove-l10n-zh-cn axel

#安装vmware虚拟机,需要先安装内核头文件,vmware的netif.c文件要修改才能正确编译
apt-get install linux-headers-$(uname -r)
chmod +x ./VMware-Workstation-Full-10.0.5-2443746.i386.bundle
./VMware-Workstation-Full-10.0.5-2443746.i386.bundle
SN====>CZ7E2-2FY5P-08DUP-6XNXG-WPKE8
tar xvf /usr/lib/vmware/modules/source/vmnet.tar -C .
vi vmnet-only/netif.c  #152行的
                       #dev = alloc_netdev(sizeof *netIf, deviceName, VNetNetIfSetup);
                       #改为
                       #dev = alloc_netdev(sizeof *netIf, deviceName, NET_NAME_UNKNOWN, VNetNetIfSetup);
tar cvf vmnet.tar vmnet-only/
mv vmnet.tar /usr/lib/vmware/modules/source/

tcp        0      0 0.0.0.0:443             0.0.0.0:*               LISTEN      12876/vmware-hostd     <===vmware-workstation-server 
tcp        0      0 0.0.0.0:902             0.0.0.0:*               LISTEN      12764/vmware-authdl    <===vmware
update-rc.d vmware-workstation-server disable   #默认不启动vmware-workstation-server服务，不开启443端口
update-rc.d vmware disable                     #默认不启动vmware服务，不开启902端口
service vmware start                           #在需要运行虚拟机之前打开vmware服务，平时不用虚拟机的时候省资源
#如果不在乎占用那点资源，或者不希望每次开虚拟机都要手动打开vmware服务，直接修改vmware启动脚本关掉vmware-authdl,注释掉/etc/init.d/vmware第345行
sed -i 's/vmware_exec \x27VMware Authentication Daemon\x27 vmware_start_authdlauncher/#删掉这些注释开启vmware-authdl#vmware_exec \x27VMware Authentication Daemon\x27 vmware_start_authdlauncher/' /etc/init.d/vmware


#声卡保存音量和解决声卡独占
apt-get install alsa-base  #重启后执行下面的命令
alsactl init           #初始化
alsamixer              #按F6,然后选择不是- [default]的设备,调节好音量
alsactl store          #保存设置

# $设置屏幕截屏默认保存到/tmp目录,root用户默认保存到/,普通用户因为没有/的权限无法通过直接按PrtScrSysq抓图,建议安装gimp来给屏幕抓图做邪恶的马赛克
gsettings set org.gnome.gnome-screenshot auto-save-directory 'file:///tmp'
apt-get install gimp   #建议安装

#Adobe Flash Player,这个老出漏洞用源里的会不会太旧
cd /tmp
wget http://fpdownload.macromedia.com/get/flashplayer/pdc/11.2.202.442/install_flash_player_11_linux.i386.tar.gz
tar xvf install_flash_player_11_linux.i386.tar.gz
cp -r usr/* /usr/
mv libflashplayer.so /usr/lib/mozilla/plugins/libflashplayer.so

# 可选.有需要的话可以替换openjdk为oracle java jdk,从 http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html下载,我用32位的系统,下的是jdk-8u31-linux-i586.tar.gz
#替换java的软链接指向要的版本而不必删除系统自带的openjdk,以备在需要的时候还可以通过修改软链接启用它
#/usr/bin/java -> /etc/alternatives/java -> /usr/bin/java java /usr/lib/jvm/jdk1.8.0_31/bin/java

tar xvf jdk-8u31-linux-i586.tar.gz
mv jdk1.8.0_31 /usr/lib/jvm/
ls -la /usr/lib/jvm/
cd /usr/lib/jvm/jdk1.8.0_31/
update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.8.0_31/bin/java 1
update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.8.0_31/bin/javac 1
update-alternatives --set java /usr/lib/jvm/jdk1.8.0_31/bin/java
update-alternatives --set javac /usr/lib/jvm/jdk1.8.0_31/bin/javac
java -version   #查看是否正确链接到java jdk版本

#安装teamviewer,windows QQ远程控制的替代方案
dpkg -i teamviewer_10.0.37742_i386.deb
update-rc.d teamviewerd disable  #让teamviewerd后台程序默认不随机启动

$在需要teamviewerd的时候用普通用户启动
sudo service teamviewerd start

#安装skype[建议],windows QQ语音聊天的替代方案,但是skype只提供了32位的.64位kali需要安装的话需要先打开32位架构支持.
#dpkg –add-architecture i386 && apt-get update
dpkg -i skype-debian_4.3.0.37-1_i386.deb

#Steam 游戏平台的安装,Steam官方的deb是for ubuntu 12的.但是只要解决库依赖问题照样能良好运行在Kali上.安装好了显卡驱动的小伙伴们能够快乐的在Kali下玩Dota2,CS:GO,TF2等等大型3D.
#root用户执行的命令列表
#安装依赖包
cd /tmp
apt-get install xfonts-100dpi pavucontrol pulseaudio-module-bluetooth libtxc-dxtn-s2tc0
#从官方下载最新steam安装包
wget http://media.steampowered.com/client/installer/steam.deb
mkdir steam-debian                         #创建一个目录用于解压官方steam包
dpkg -x steam.deb steam-debian             #把官方steam包解压到目录   
dpkg -e steam.deb steam-debian/DEBIAN      #解压官方包的DEBIAN脚本
vi steam-debian/DEBIAN/control             #修改control文件,把依赖的glibc版本从2.15改成2.13 删除依赖jockey-common
dpkg -b steam-debian                       #重新打包
dpkg -i steam-debian.deb                   #安装我们修改过依赖关系的包
rm -rf /etc/apt/sources.list.d/steam.list  #删掉steam的源和依赖,否则apt-get update的时候会把kali源和
rm -rf /usr/bin/steamdeps                  #steam的源混在一起
rm -rf /etc/apt/trusted.gpg.d/steam.gpg

$切换到普通用户.TIPS:steam登陆框不能输入ID和密码.但是可以通过在记事本复制右键点击登陆框粘贴解决
steam                                      #执行一次steam,肯定会出错的,但是它会创建steam需要的目录结构                  
cd /tmp
mkdir steam                                #下载steam依赖的glibc 2.15
wget   http://security.ubuntu.com/ubuntu/pool/main/e/eglibc/libc6_2.15-0ubuntu10.10_i386.deb
dpkg -x libc6_2.15-0ubuntu10.10_i386.deb steam/               #解包复制到依赖路径
mv steam/lib/i386-linux-gnu/* ~/.local/share/Steam/ubuntu12_32
steam                                      #再次执行,这下steam开始更新,直到更新完毕.

#Nvidia显卡,独显
apt-get update
apt-get dist-upgrade
apt-get install -y linux-headers-$(uname -r)
apt-get install nvidia-kernel-dkms
sed 's/quiet/quiet nouveau.modeset=0/g' -i /etc/default/grub
update-grub
reboot

#Nvidia显卡,双显
apt-get update
apt-get upgrade
#apt-get install linux-headers-$(uname -r)
apt-get install bumblebee bumblebee-nvidia
vi  /etc/bumblebee/bumblebee.conf                 #22行改成 Driver=nvidia
lspci | egrep 'VGA|3D'|grep NVIDIA|cut -d" " -f1|sed 's/./:/'    #记住这行命令的结果
vi /etc/bumblebee/xorg.conf.nvidia    #  修改 #    BusID "PCI:01:00:0"  成上面获得的结果
reboot   #重启
optirun glxgears -info          
#执行提示错误[ERROR]Cannot access secondary GPU - error: [XORG] (EE) No devices detected
#vi  /etc/bumblebee/xorg.conf.nvidia   BusID的PCI地址写错了
 #执行提示错误[ERROR]Cannot access secondary GPU - error: Could not load GPU driver
#vi /etc/bumblebee/bumblebee.conf  
#KernelDriver=nvidia 改成 KernelDriver=nvidia-current
#执行提示错误[ERROR]Cannot access secondary GPU - error: [XORG] (EE) /dev/dri/card0: failed to set DRM interface version 1.4: Permission denied
#cat >>/etc/bumblebee/xorg.conf.nvidia << EOF
#Section "Screen"
#Identifier "Default Screen"   
#Device "DiscreteNvidia"EndSection
#EOF
#service bumblebeed restart
正确安装后运行以下命令应该结果是
root@H:/tmp# glxinfo | grep -i "direct rendering"
direct rendering: Yes
root@H:/tmp# optirun glxinfo | grep -i "direct rendering"
direct rendering: Yes

#cudaHashcat
apt-get install nvidia-cuda-toolkit nvidia-opencl-icd
wget http://hashcat.net/files_legacy/cudaHashcat-1.31.7z
7z x cudaHashcat-1.31.7z
cd cudaHashcat-1.31
optirun  ./cudaHashcat32.bin -t 32 -a 7 example0.hash ?a?a?a?a example.dict
cat >> /usr/bin/cudahashcat <<EOF
#!/bin/bash
cd /usr/share/cudaHashcat && ./cudaHashcat32.bin "$@"
EOF
chmod +x /usr/bin/cudahashcat


#lwqq
cd /tmp
git clone https://github.com/xiehuc/lwqq.git
apt-get install build-essential cmake pkg-config libcurl4-openssl-dev libsqlite3-dev libmozjs185-dev libev-dev libglib2.0-dev libpurple-dev
mkdir build
cd build/
cmake ../ -DCMAKE_INSTALL_PREFIX=/usr
make
make install
#pidgin-lwqq
cd /tmp
git clone https://github.com/xiehuc/pidgin-lwqq.git
mkdir build
cd build/
cmake ../ -DCMAKE_INSTALL_PREFIX=/usr
make
make install

#OTR wget https://otr.cypherpunks.ca/libotr-4.1.0.tar.gz && wget https://otr.cypherpunks.ca/pidgin-otr-4.0.1.tar.gz && apt-get build-dep pidgin
apt-get insall libgcrypt11-dev
cd /tmp
tar xvf libotr-4.1.0.tar.gz
cd libotr-4.1.0/
./configure --prefix=/usr
make && make install
tar xvf pidgin-otr-4.0.1.tar.gz
cd pidgin-otr-4.0.1/
./configure --prefix=/usr
make && make install


