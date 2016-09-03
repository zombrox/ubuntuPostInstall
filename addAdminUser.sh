#!/bin/bash

adminName=$1
# You need to be SUDO using "sudo -i" not "sudo -s".

useradd $adminName -U -m -G adm,cdrom,sudo,dip,plugdev,lxd,lpadmin,sambashare

mkdir /home/$adminName/.ssh
cp authorizedKeys.$adminName* /home/$adminName/.ssh/authorized_keys
chown $adminName:$adminName /home/$adminName/.ssh/authorized_keys
chmod 600 /home/$adminName/.ssh/authorized_keys

