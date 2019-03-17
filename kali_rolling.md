## New User
```
useradd -m -G video,audio,cdrom,sudo -s /bin/bash huatux
passwd huatux
```

## Chinese Input method
```
apt-get install fcitx fcitx-googlepinyin
```

## chrome 
```
apt-get install libdbusmenu-glib4 libdbusmenu-gtk4 libindicator7 libappindicator3-1
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
