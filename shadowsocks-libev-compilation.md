```apt-get install --no-install-recommends gettext build-essential autoconf libtool asciidoc xmlto automake```

```#apt-get install libc-ares-dev libpcre3-dev libmbedtls-dev libsodium-dev libev-dev```

```wget https://c-ares.haxx.se/download/c-ares-1.15.0.tar.gz && tar xvf c-ares*.tar.gz
cd c-ares-1.15.0
./configure --prefix=/usr
make
make install
```
```
wget https://ftp.pcre.org/pub/pcre/pcre-8.42.tar.gz && tar xvf pcre*.tar.gz
cd pcre-8.42
./configure --prefix=/usr --enable-utf8 --enable-unicode-properties
make
make install
```
```
wget https://tls.mbed.org/download/mbedtls-2.13.0-gpl.tgz && tar xvf mbedtls*.tgz
cd mbedtls-2.13.0
make SHARED=1  (动态库，如果编译静态库shadowsocks的--enable-shared参数去掉)
make install DESTDIR=/usr 
```
```
wget https://download.libsodium.org/libsodium/releases/libsodium-1.0.16.tar.gz && tar xvf libsodium*.tar.gz
cd libsodium-1.0.16
./configure --prefix=/usr --disable-ssp
make
make install
```
```
wget http://dist.schmorp.de/libev/libev-4.24.tar.gz && tar xvf libev*.tar.gz
cd libev-4.24
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

ss-server -a nobody -u -c /etc/shadowsocks-libev/server.json -f /var/run/shadowsocks.pid
ss-local -c /etc/shadowsocks-libev/client.json -u
```
-------------------------------------------------
```
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
```
----------------------------------------------------
```
cat << EOF >> /lib/systemd/system/shadowsocks.service
[Unit]
Description=Shadowsocks-Libev Custom Client Service for X
Documentation=man:ss-local(1)
After=network.target

[Service]
Type=simple
User=nobody
Group=nogroup
CapabilityBoundingSet=CAP_NET_BIND_SERVICE
ExecStart=/usr/bin/ss-local -c /etc/shadowsocks-libev/client.json

[Install]
WantedBy=multi-user.target
EOF
```
----------------------------------
#### RedHat 系列‘systemctl’文件路径改为   
/usr/lib/systemd/system/shadowsocks-libev.service
Group=nogroup改为Grou=nobody
