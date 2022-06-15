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

## JDK
```
https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html
export JDK_VERSION=jdk-17.0.3.1
tar xvf $JDK_VERSION_linux-x64_bin.tar.gz -C /usr/lib/jvm/
update-alternatives --install /usr/bin/java java /usr/lib/jvm/$JDK_VERSION/bin/java 1
update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/$JDK_VERSION/bin/javac 1
update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/$JDK_VERSION/bin/jar 1
update-alternatives --set java  /usr/lib/jvm/$JDK_VERSION/bin/java
update-alternatives --set javac  /usr/lib/jvm/$JDK_VERSION/bin/javac
update-alternatives --set jar  /usr/lib/jvm/$JDK_VERSION/bin/jar
java -version
```
