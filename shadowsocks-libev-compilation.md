> 安装编译依赖包

```bash
apt-get install --no-install-recommends gettext build-essential autoconf libtool asciidoc xmlto automake pkg-config python2
```
```bash
#yum install gcc gettext autoconf libtool automake make pcre-devel asciidoc xmlto gcc-c++ -y
```
> 编译
```bash
LIBEV_VER=4.33
MBEDTLS_VER=2.28.1
LIBSODIUM_VER=LATEST
PCRE_VER=8.45
CARES_VER=1.18.1
TARGET_DIR=/tmp/BUILD
mkdir -pv $TARGET_DIR
#centos 7
#CARES_VER=1.17.2
```
<!-- more -->
```bash
cd $TARGET_DIR
wget https://c-ares.haxx.se/download/c-ares-${CARES_VER}.tar.gz && tar xvf c-ares-${CARES_VER}.tar.gz
cd c-ares-${CARES_VER}
./configure --prefix=/usr
make -j$(nproc)
make install
```
```bash
cd $TARGET_DIR
wget https://versaweb.dl.sourceforge.net/project/pcre/pcre/${PCRE_VER}/pcre-${PCRE_VER}.tar.gz && tar xvf pcre-${PCRE_VER}.tar.gz
cd pcre-${PCRE_VER}
./configure --prefix=/usr --enable-jit --enable-utf8 --enable-unicode-properties
make -j$(nproc)
make install
```
```bash
cd $TARGET_DIR
wget https://github.com/ARMmbed/mbedtls/archive/refs/tags/v${MBEDTLS_VER}.tar.gz && tar xvf v${MBEDTLS_VER}.tar.gz
cd mbedtls-${MBEDTLS_VER}
make SHARED=1 CFLAGS="-O2 -std=c99" -j$(nproc)
make install DESTDIR=/usr
```
```bash
cd $TARGET_DIR
curl -O https://download.libsodium.org/libsodium/releases/${LIBSODIUM_VER}.tar.gz && tar xvf ${LIBSODIUM_VER}.tar.gz
cd libsodium-stable
./configure --prefix=/usr --disable-ssp
make -j$(nproc)
make install
```
```bash
cd $TARGET_DIR
wget http://dist.schmorp.de/libev/libev-${LIBEV_VER}.tar.gz && tar xvf libev-${LIBEV_VER}.tar.gz
cd libev-${LIBEV_VER}
./configure --prefix=/usr
make -j$(nproc)
make install
```
```bash
cd $TARGET_DIR
git clone https://github.com/shadowsocks/shadowsocks-libev.git
cd shadowsocks-libev
git submodule update --init --recursive
./autogen.sh

./configure --build=x86_64-linux-gnu --prefix=/usr --includedir=/usr/include --mandir=/usr/share/man --infodir=/usr/share/info --sysconfdir=/etc --localstatedir=/var --disable-silent-rules --libdir=/usr/lib/x86_64-linux-gnu --libexecdir=/usr/lib/x86_64-linux-gnu --disable-maintainer-mode --disable-dependency-tracking --enable-shared --disable-ssp --with-sodium-include=/usr/include --with-sodium-lib=/usr/lib --with-mbedtls-include=/usr/include --with-mbedtls-lib=/usr/lib

make -j$(nproc)
make install
```
服务端配置
```bash
mkdir /etc/shadowsocks-libev

cat << EOF > /etc/shadowsocks-libev/server.json
{
    "server":"0.0.0.0",
    "server_port":PORT,
    "nameserver":"8.8.8.8",
    "password":"PASS",
    "timeout":300,
    "method":"chacha20-ietf-poly1305"
}
EOF

cat << EOF >> /etc/systemd/system/shadowsocks.service
[Unit]
Description=Shadowsocks-libev Default Server Service
Documentation=man:shadowsocks-libev(8)
After=network.target

[Service]
Type=simple
User=nobody
Group=nogroup
LimitNOFILE=32768
ExecStart=/usr/bin/ss-server -c /etc/shadowsocks-libev/server.json -u

[Install]
WantedBy=multi-user.target
EOF

#systemctl start/enable/stop/disable shadowsocks
```
客户端配置
```bash
mkdir /etc/shadowsocks-libev

cat << EOF > /etc/shadowsocks-libev/client.json
{
    "server":"SERVER_IP",
    "server_port":PORT,
    "local_address":"127.0.0.1",
    "local_port":8080,
    "nameserver":"8.8.8.8",
    "password":"PASS",
    "timeout":300,
    "method":"chacha20-ietf-poly1305"
}
EOF

cat << EOF > /etc/shadowsocks-libev/client2.json
{
    "server":"SERVER_IP",
    "server_port":PORT,
    "local_address":"127.0.0.1",
    "local_port":8080,
    "nameserver":"8.8.8.8",
    "password":"PASS",
    "timeout":300,
    "method":"chacha20-ietf-poly1305"
}
EOF


cat << EOF >> /etc/systemd/system/shadowsocks@.service
[Unit]
Description=Shadowsocks-Libev Custom Client Service for X
Documentation=man:ss-local(1)
After=network-online.target

[Service]
Type=simple
User=nobody
Group=nogroup
CapabilityBoundingSet=CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_BIND_SERVICE
ExecStart=/usr/bin/ss-local -c /etc/shadowsocks-libev/%i.json

[Install]
WantedBy=multi-user.target
EOF

#systemctl start/enable/stop/disable shadowsocks@配置文件名(client1/client2)
```
> RedHat系列 Group=**nogroup**改为Group=**nobody**
