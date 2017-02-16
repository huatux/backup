#https://doub.io/wlzy-16/ 
su -root


wget -N --no-check-certificate https://softs.pw/Bash/bbr.sh && chmod +x bbr.sh && bash bbr.sh

echo "net.ipv4.tcp_fastopen = 3" >> /etc/sysctl.conf
