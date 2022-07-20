#!/bin/bash

sudo apt install virt-manager
sudo apt install qemu qemu-kvm 
sudo apt install libvirt-daemon-driver-qemu
sudo apt install libvirt-daemon 

sudo service libvirtd start

virt-manager
