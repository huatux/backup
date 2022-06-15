service gdm3 stop #运行后黑屏，按Ctrl+Alt+F1
Xorg -configure
mv ~/xorg.conf /etc/X11/

root@H:/tmp# gtf 1366 768 60 -x

  # 1368x768 @ 60.00 Hz (GTF) hsync: 47.70 kHz; pclk: 85.86 MHz
  Modeline "1368x768_60.00"  85.86  1368 1440 1584 1800  768 769 772 795  -HSync +Vsync

vi /etc/X11/xorg.conf
Section "Monitor"
        Identifier   "Monitor0"
        VendorName   "Monitor Vendor"
        ModelName    "Monitor Model"
	Modeline "1368x768_60.00"  85.86  1368 1440 1584 1800  768 769 772 795  -HSync +Vsync
EndSection

reboot
