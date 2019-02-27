#!/bin/bash
echo '= cpu info ='
lscpu
echo -e '========================================================================== \n'
echo '= ram info ='
dmidecode -t memory | grep -A16 'Memory Device' |grep DDR -C5
echo -e '========================================================================== \n'
echo '= hdd info ='
#hdparm -i /dev/sda
#cat /proc/mdstat
fdisk -l /dev/sda
echo -e '========================================================================== \n'
echo '= hdd lsblk info ='
lsblk
echo -e '========================================================================== \n'
echo '= vga info ='
lspci -v |grep -in -A 9 vga
echo -e '========================================================================== \n'
echo '= card info ='
csadm getstate
echo ''
echo '= card battstate info ='
csadm getbattstate
echo -e '========================================================================== \n'

