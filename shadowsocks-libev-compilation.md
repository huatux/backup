```apt-get install --no-install-recommends gettext build-essential autoconf libtool asciidoc xmlto automake pkg-config```

```#apt-get install libc-ares-dev libpcre3-dev libmbedtls-dev libsodium-dev libev-dev```

```
wget https://c-ares.haxx.se/download/c-ares-1.17.1.tar.gz && tar xvf c-ares*.tar.gz
cd c-ares-1.17.1
./configure --prefix=/usr
make
make install
```
```
wget https://ftp.pcre.org/pub/pcre/pcre-8.44.tar.gz && tar xvf pcre*.tar.gz
cd pcre-8.44
./configure --prefix=/usr --enable-utf8 --enable-unicode-properties
make
make install
```
```
wget https://github.com/ARMmbed/mbedtls/archive/v2.26.0.tar.gz && tar xvf v2.26.0.tar.gz
cd mbedtls-2.26.0
make SHARED=1  #动态库，如果编译静态库shadowsocks的--enable-shared参数去掉
make install DESTDIR=/usr 
```
```
curl -O https://download.libsodium.org/libsodium/releases/LATEST.tar.gz && tar xvf LATEST.tar.gz
cd libsodium-stable
./configure --prefix=/usr --disable-ssp
make
make install
```
```
wget http://dist.schmorp.de/libev/libev-4.33.tar.gz && tar xvf libev*.tar.gz
cd libev-4.33
./configure --prefix=/usr
make
make install
```
```
git clone https://github.com/shadowsocks/shadowsocks-libev.git
cd shadowsocks-libev
git submodule update --init --recursive
./autogen.sh

./configure --build=x86_64-linux-gnu --prefix=/usr --includedir=/usr/include --mandir=/usr/share/man --infodir=/usr/share/info --sysconfdir=/etc --localstatedir=/var --disable-silent-rules --libdir=/usr/lib/x86_64-linux-gnu --libexecdir=/usr/lib/x86_64-linux-gnu --disable-maintainer-mode --disable-dependency-tracking --enable-shared --disable-ssp --with-sodium-include=/usr/include --with-sodium-lib=/usr/lib --with-mbedtls-include=/usr/include --with-mbedtls-lib=/usr/lib


make
make install
```
--------------------------------------------------
```
####服务端配置
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

cat << EOF >> /lib/systemd/system/shadowsocks-libev.service
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
-------------------------------------------------
```
####客户端配置
mkdir /etc/shadowsocks-libev

cat << EOF > /etc/shadowsocks-libev/client.json
{
    "server":"0.0.0.0",
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
    "server":"0.0.0.0",
    "server_port":PORT,
    "local_address":"127.0.0.1",
    "local_port":8080,
    "nameserver":"8.8.8.8",
    "password":"PASS",
    "timeout":300,
    "method":"chacha20-ietf-poly1305"
}
EOF


cat << EOF >> /lib/systemd/system/shadowsocks@.service
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

#systemctl start/enable/stop/disable shadowsocks@配置文件名
```
----------------------------------
#### RedHat 系列‘systemctl’文件路径改为   
/usr/lib/systemd/system/shadowsocks-libev.service</br>
Group=nogroup改为Grou=nobody
