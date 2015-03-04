#lsusb
Bus 003 Device 004: ID 147e:2016 Upek Biometric Touchchip/Touchstrip Fingerprint Sensor

apt-get install libfprint0 fprint-demo fprintd libpam-fprintd

root@H:/tmp# fprintd-enroll
Using device /net/reactivated/Fprint/Device/0
Enrolling right index finger.
Enroll result: enroll-stage-passed
Enroll result: enroll-stage-passed
Enroll result: enroll-stage-passed
Enroll result: enroll-stage-passed
Enroll result: enroll-stage-passed
Enroll result: enroll-completed
root@H:/tmp# fprintd-list  root
found 1 devices
Device at /net/reactivated/Fprint/Device/0
Using device /net/reactivated/Fprint/Device/0
Fingerprints for user root on UPEK Eikon 2 (swipe):
 - #0: right-index-finger

huatux@H:~$ su -
Swipe your right index finger across the fingerprint reader
root@H:~# 

huatux@H:~$ sudo whoami
Swipe your right index finger across the fingerprint reader
root
huatux@H:~$

ls -al /var/lib/fprint/
pam-auth-update --force




