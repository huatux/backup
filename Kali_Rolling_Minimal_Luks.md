> /boot  **512M**
```bash
parted -s /dev/sda mklabel msdos
parted -s /dev/sda mkpart primary ext3 0% 512M
parted -s /dev/sda mkpart primary ext4 512M  100%
```
```bash
mkfs.ext3 /dev/sda1
cryptsetup -v --verify-passphrase luksFormat /dev/sda2
cryptsetup luksOpen /dev/sda2 sda2-crypt
```
> swap **4G**
```bash
pvcreate /dev/mapper/sda2-crypt
vgcreate kali /dev/mapper/sda2-crypt
lvcreate -L 4G kali -n swap
lvcreate -l +100%FREE kali -n root
mkswap /dev/mapper/kali-swap
mkfs.ext4 /dev/mapper/kali-root
```
```bash
mkdir /mnt/kali
mount /dev/mapper/kali-root /mnt/kali
mkdir /mnt/kali/boot
mount -t ext3 /dev/sda1 /mnt/kali/boot
```
```bash
cd /tmp
wget http://kali.download/kali/pool/main/d/debootstrap/debootstrap_1.0.123.tar.gz
tar xvf debootstrap*.tar.gz -C /tmp
rm -rf /usr/share/debootstrap
ln -s /tmp/debootstrap /usr/share/debootstrap && cd /usr/share/debootstrap
#wget -q -O - https://archive.kali.org/archive-key.asc | apt-key add
./debootstrap --foreign --arch amd64 kali-rolling /mnt/kali http://kali.download/kali
```
```bash
mkdir /mnt/kali/etc/lvm
rsync -avz /etc/lvm/* /mnt/kali/etc/lvm
```
```bash
chroot /mnt/kali/ /debootstrap/debootstrap --second-stage
```
```bash
cat > /mnt/kali/etc/resolv.conf << EOF
nameserver 8.8.8.8
nameserver 8.8.4.4
EOF
```
```bash
cat > /mnt/kali/etc/apt/sources.list << EOF
deb http://kali.download/kali kali-rolling main non-free contrib
deb-src http://kali.download/kali kali-rolling main non-free contrib
EOF
```
```bash
cat > /mnt/kali/etc/crypttab << EOF
sda2-crypt /dev/sda2 none luks
EOF
```
```bash
export NET_INTERFACE=eth0
export STATIC_IP=$(ifconfig $NET_INTERFACE|grep inet|grep -v inet6|awk -F" " '{print $2}')
export GATE_WAY=$(/sbin/ip route|awk '/default/ { print $3 }')
echo "IP:$STATIC_IP     GW:$GATE_WAY"
```
```bash
cat >> /mnt/kali/etc/network/interfaces << EOF
auto eth0
iface eth0 inet static
address $STATIC_IP
netmask 255.255.255.0
gateway $GATE_WAY
dns-nameserver 8.8.8.8
dns-nameserver 8.8.4.4
EOF
```
```bash
echo 'Linode' > /mnt/kali/etc/hostname
```
```bash
cat > /mnt/kali/etc/hosts << EOF
127.0.0.1   localhost
# The following lines are desirable for IPv6 capable hosts
::1     localhost ip6-localhost ip6-loopback
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
EOF
```
```bash
cat > /mnt/kali/etc/fstab << EOF
/dev/mapper/kali-root /               ext4    errors=remount-ro 0       1
/dev/sda1 /boot           ext3    defaults        0       2
/dev/mapper/kali-swap none            swap    sw              0       0
EOF
```
```bash
cat >> /mnt/kali/etc/modprobe.d/blacklist.conf<< EOF
blacklist floppy
EOF
```
```bash
for fs in /dev /sys /proc /dev/pts;do mount --bind $fs /mnt/kali$fs;done
```
```bash
chroot /mnt/kali /bin/bash 
```
```bash
apt update 
apt-get -y install net-tools initramfs-tools openssh-server linux-image-5.9.0-kali5-amd64
apt-get -y install locales-all
apt-get -y install locales console-common less vim git apt-transport-https network-manager
apt-get -y install cryptsetup lvm2
systemctl enable lvm2
```
<!-- more -->

> **grub2** 安装的时候记得安装到 **/dev/sda**
```bash
apt-get -y install grub2
grub-install /dev/sda
update-grub
ssh-keygen -A
systemctl enable ssh
update-initramfs -u

sed -i '1iPort 2200' /etc/ssh/sshd_config
sed -i 's/^#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's$^#PasswordAuthentication.*$PasswordAuthentication no$' /etc/ssh/sshd_config
sed -i 's@^#AuthorizedKeysFile.*@AuthorizedKeysFile .ssh/authorized_keys@' /etc/ssh/sshd_config
mkdir ~/.ssh
cat >> ~/.ssh/authorized_keys << EOF
ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEA3hyus0hdgLP2IBleryDJYByxTGIz+z+pbSpdJ5mUgD9QSzzGxAgwD1OzUFAjJQ4UVaBA+bNlYb5KBC7Cd1FIv2s/6I5dPTmjWUfbdtIm0paDtoUILlTUNiZEhEz6NSz+sy+mSyF5hw3RlxTQxkIH5Q50rv2bJO6L3h7tsDZxYz+blkgWkByVkDwNxbChzeF5PFYTXN+fX+wkgPwwOLBidhopgV3+8T+Me8FChlOmdIPTa6vhx5+AicddxhpyYrqlQ9TMz+NVZh2cvyrovHHARFPcPA9mWIHEpJ7333HYz8tbWCQkfdmlpWXQ9fQX2XDR/pLcNg9iVXGLbx0lgMkv3osP94mAWGTsQWI2iq8AjQ0Zr4VmO3n6AX8Yi87zpFzSDOAPzUPJnpiH5TSurHweaNIVYwzms8nL0+bwb1fiqEtRyRz3l3iucUOVILNutrKYvm7KZIaAITGtLNK18wovuIYAzcBLBfOC8KjwAMF2/cknrnegh2stg5zo5xWet5S/pTVkMjTv8Flr6m/cmp73eLwrWVQKYPBh4eveS3o9oXUoDuDMViQMeY/cNwDazFqlWnnSkfdYoVcmJwaAGS2p0HUGR4U05JmCG6618DOCJTsurncROzSDCACnajurFyLAdHyo6Os8nGRY7Hwd8yzA8zhVRgZBwUuklNbrSOrKt0U= root@public_key
EOF
chmod 600 ~/.ssh/authorized_keys

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

passwd root
```
> 启动时候解锁 **luks**
```bash
apt-get -y install busybox dropbear* initramfs-tools net-tools

cat << EOF >> /etc/dropbear/initramfs/dropbear.conf
DROPBEAR_OPTIONS="-p 2222"
EOF

cp ~/.ssh/authorized_keys /etc/dropbear/initramfs/authorized_keys
#sed -i '1s#^#no-port-forwarding,no-agent-forwarding,no-X11-forwarding,command="/bin/cryptroot-unlock" #' /etc/dropbear-initramfs/authorized_keys

echo $(grep DRIVER /sys/class/net/$NET_INTERFACE/device/uevent|cut -d'=' -f2) >> /etc/initramfs-tools/modules

cat << EOF >> /etc/initramfs-tools/conf.d/network_config
#export IP=:::::eth0:dhcp
export IP=$STATIC_IP::$GATE_WAY:255.255.255.0:kali:eth0:off
EOF

sed -i 's#GRUB_CMDLINE_LINUX=""#GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"#' /etc/default/grub

chmod 600 /etc/dropbear/initramfs/authorized_keys
update-initramfs -u
exit
for fs in /dev /sys /proc /dev/pts /;do umount /mnt/kali$fs;done
```
```bash
apt-get install build-essential
```

```bash
echo "tcp_bbr" >> /etc/modules-load.d/modules.conf

echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
```
