
在Linode主机上安装全盘加密的Kali

很早之前就想写这篇文章,但是一直没找到机会0- 0…本文简单的以命令记录的方式介绍如何以非常规的方式安装Kali.原理和LFS的最后阶段,或Gentoo Stage3类似.高手喷子勿喷.本文主要写给需要的人,如果你感觉这篇文章对你有用就收藏转发(可以的话请注明出处:) ).还可以举一反三,比如远程给不会安装kali的朋友安装系统.想象一下你的朋友只要放入光盘,把22端口映射到外网.然后passwd root改个稍微复杂点的密码,ssh-keygen -A,service sshd start.之后就可以以最高逼格给他安装好win7 + kali加密 的双系统,这是多么屌的一件事情.废话不说了- -如下才是重点.

登录Linode管理页面.为你的VPS创建至少3个(unformatted/raw)硬盘,分别用于:boot 镜像(128-512M),swap 镜像,root 镜像,本人用的是Linode 2048.网站也是架设在一台全盘加密的Kali上,每次启动必须登入Lish输入硬盘解锁密码才可以启动.
+++++++++++++++++++++++++++++++++++++++++++
BOOT (256 MB, raw)     Edit | Remove
SWAP (4096 MB, raw)     Edit | Remove
ROOT (44800 MB, raw)     Edit | Remove
+++++++++++++++++++++++++++++++++++++++++++
Dashboard里创建一个新的Profile(Create a new Configuration Profile):
Label->Kali Full Disk Encryption
Kernel ->  pv-grub-x86_64
在Block Device Assignment段把之前创建的硬盘镜像都选中
禁用Filesystem/Boot Helpers段中的Automount devtmpfs,然后保存Profile

从Rescue菜单引导到Finnix,确保硬盘镜像如下:
/dev/xvda    BOOT
/dev/xvdb     SWAP
/dev/xvdc     ROOT
/dev/xvdh     Finnix Media

从Remote Access菜单找到Lish链接方式，连接上Lish
==============分区和加密部分配置命令===================
mkfs.ext2 /dev/xvda
cryptsetup -v -d /dev/urandom create crypt-xvdb /dev/xvdb
mkswap /dev/mapper/crypt-xvdb
swapon /dev/mapper/crypt-xvdb

cryptsetup -v --verify-passphrase luksFormat /dev/xvdc  (注意输入大写的YES)
cryptsetup luksOpen /dev/xvdc crypt-xvdc
mkfs.ext4 /dev/mapper/crypt-xvdc
==============分区和加密部分配置命令===================
mkdir /mnt/kali
mount /dev/mapper/crypt-xvdc /mnt/kali && cd /mnt/kali
mkdir /mnt/kali/boot
mount -t ext2 /dev/xvda /mnt/kali/boot

wget http://cdimage.kali.org/kali-1.1.0a/kali-linux-1.1.0a-amd64.iso
#找一个下载ISO速度快的镜像地址下载吧
#wget http://archive-6.kali.org/kali-images/kali-1.1.0a/kali-linux-1.1.0a-amd64.iso
#wget http://archive-6.kali.org/kali-images/kali-2.0/kali-linux-2.0-amd64.iso
mkdir /mnt/kali/{iso,squashfs}
mount -t iso9660 -o loop kali-linux-1.1.0a-amd64.iso /mnt/kali/iso/
#mount -t iso9660 -o loop kali-linux-2.0-amd64.iso /mnt/kali/iso/
mount -t squashfs -o loop /mnt/kali/iso/live/filesystem.squashfs /mnt/kali/squashfs/
rsync -avz /mnt/kali/squashfs/ /mnt/kali/
umount /mnt/kali/squashfs/
umount /mnt/kali/iso/
rm -rf /mnt/kali/{iso,squashfs}
rm -rf kali-linux-1.1.0a-amd64.iso
#rm -rf kali-linux-2.0-amd64.iso
rm -rf 0 example.conf.json live-build/

mount -o bind /dev /mnt/kali/dev/
mount -o bind /dev/pts/ /mnt/kali/dev/pts
mount -t proc /proc/ /mnt/kali/proc/
mount -t sysfs /sys/ /mnt/kali/sys/
chroot /mnt/kali/ /bin/bash

#For Kali 1.1.0a
cat > /etc/apt/sources.list << EOF
deb http://http.kali.org/kali kali main contrib non-free
deb-src http://http.kali.org/kali kali main contrib non-free
deb http://security.kali.org/kali-security kali/updates main contrib non-free
deb-src http://security.kali.org/kali-security kali/updates main contrib non-free
EOF
#For Kali 2.0

cat >> /etc/network/interfaces << EOF
auto eth0
iface eth0 inet static
address STATIC_IP  —->VPS的IP
netmask 255.255.255.0
gateway GATE_WAY   —–>一般为VPS的IP的C段.1,不确定用route -n查查看
dns-nameserver 8.8.8.8
dns-nameserver 8.8.4.4
EOF

cat > /etc/resolv.conf << EOF
nameserver 8.8.8.8
nameserver 8.8.4.4
EOF

echo 'Kali_Linode' > /etc/hostname

cat > /etc/hosts << EOF
127.0.0.1    localhost
127.0.0.1    Kali_Linode
EOF

sed -i 's/managed=false/managed=true/' /etc/NetworkManager/NetworkManager.conf
———————此段为备用———————–
blkid|grep ext2|cut -d'”‘ -f2
blkid|grep swap|cut -d'”‘ -f2
blkid|grep ext4|cut -d'”‘ -f2
————————————————————-
cat > /etc/crypttab << EOF
crypt-xvdc      /dev/xvdc               none            luks
crypt-xvdb      /dev/xvdb               /dev/urandom    swap
EOF

cat > /etc/fstab << EOF
/dev/xvda /boot ext2 defaults 0 2
/dev/mapper/crypt-xvdb none swap sw 0 0
/dev/mapper/crypt-xvdc / ext4 errors=remount-ro 0 1
EOF

apt-get update
#apt-get upgrade

mkdir /boot/grub
cd /boot
mkdir boot
mv grub/ boot/
ln -s boot/grub/ grub

apt-get install grub-legacy
grub-install /dev/xvda
update-grub
vi /boot/grub/menu.lst
修改内核引导参数root=/dev/mapper/crypt-xvdc console=hvc0 ro

passwd root
ssh-keygen -A
service ssh start
update-rc.d ssh enable
update-rc.d gdm3 disable

update-initramfs -u
exit
umount -l /mnt/kali
通过网页DashBoard重启

mkdir ~/.ssh && chmod 700 ~/.ssh
vi ~/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEA3hyus0hdgLP2IBleryDJYByxTGIz+z+pbSpdJ5mUgD9QSzzGxAgwD1OzUFAjJQ4UVaBA+bNlYb5KBC7Cd1FIv2s/6I5dPTmjWUfbdtIm0paDtoUILlTUNiZEhEz6NSz+sy+mSyF5hw3RlxTQxkIH5Q50rv2bJO6L3h7tsDZxYz+blkgWkByVkDwNxbChzeF5PFYTXN+fX+wkgPwwOLBidhopgV3+8T+Me8FChlOmdIPTa6vhx5+AicddxhpyYrqlQ9TMz+NVZh2cvyrovHHARFPcPA9mWIHEpJ7333HYz8tbWCQkfdmlpWXQ9fQX2XDR/pLcNg9iVXGLbx0lgMkv3osP94mAWGTsQWI2iq8AjQ0Zr4VmO3n6AX8Yi87zpFzSDOAPzUPJnpiH5TSurHweaNIVYwzms8nL0+bwb1fiqEtRyRz3l3iucUOVILNutrKYvm7KZIaAITGtLNK18wovuIYAzcBLBfOC8KjwAMF2/cknrnegh2stg5zo5xWet5S/pTVkMjTv8Flr6m/cmp73eLwrWVQKYPBh4eveS3o9oXUoDuDMViQMeY/cNwDazFqlWnnSkfdYoVcmJwaAGS2p0HUGR4U05JmCG6618DOCJTsurncROzSDCACnajurFyLAdHyo6Os8nGRY7Hwd8yzA8zhVRgZBwUuklNbrSOrKt0U= root@public_key

