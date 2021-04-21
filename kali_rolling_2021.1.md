## Chinese Input method
```
apt-get install fcitx5 fcitx5-pinyin kde-config-fcitx5 fcitx5-material-color
im-config
sed -i 's/CloudPinyinEnabled=True/CloudPinyinEnabled=False/' /home/huatux/.config/fcitx5/conf/pinyin.conf
```

## chrome 
```
dpkg -i google-chrome-stable_current_amd64.deb
```

## firefox-mozilla
```
tar xvf firefox-$VERSION.tar.bz2 -C /usr/lib/
ln -s /usr/lib/firefox/firefox-bin /usr/bin/firefox-moz
sed -i 's#firefox-esr#firefox-moz#' /usr/bin/firefox
cp /usr/share/applications/{firefox-esr.desktop,firefox-moz.desktop}
sed -i 's#/usr/lib/firefox-esr/firefox-esr#/usr/lib/firefox/firefox-bin#' /usr/share/applications/firefox-moz.desktop
```

## Remove Kdeconnected
```
apt remove kdeconnect
```

## JDK
```
http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
tar xvf jdk-8u181-linux-x64.tar.gz -C /usr/lib/jvm/
update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.8.0_181/bin/java 1
update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.8.0_181/bin/javac 1
update-alternatives --set java /usr/lib/jvm/jdk1.8.0_181/bin/java
update-alternatives --set javac /usr/lib/jvm/jdk1.8.0_181/bin/javac
java -version
```
