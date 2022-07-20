#!/bin/bash

# https://www.virtualbox.org/wiki/Download_Old_Builds_6_1 

# version 6.1.18


cd /tmp/

wget https://download.virtualbox.org/virtualbox/6.1.18/VirtualBox-6.1.18-142142-Linux_amd64.run

sleep 1

wget https://download.virtualbox.org/virtualbox/6.1.18/Oracle_VM_VirtualBox_Extension_Pack-6.1.18.vbox-extpack

sudo apt remove virtualbox-6.1

sudo bash VirtualBox-6.1.18-142142-Linux_amd64.run

sudo virtualbox Oracle_VM_VirtualBox_Extension_Pack-6.1.18.vbox-extpack

rm -rf VirtualBox-6.1.18-142142-Linux_amd64.run Oracle_VM_VirtualBox_Extension_Pack-6.1.18.vbox-extpack

cd

