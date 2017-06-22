#https://github.com/shadowsocks/shadowsocks-libev

sudo sh -c 'printf "deb http://httpredir.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/jessie-backports.list'
sudo apt update
sudo apt -t jessie-backports install shadowsocks-libev
