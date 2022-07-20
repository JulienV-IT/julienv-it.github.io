#!/bin/bash



showToilet(){
fontpath=/usr/share/figlet/*.tlf
for font in ${fontpath}; do
  filename=$(basename "$font")
  echo $filename
  toilet -f ${filename} -F metal ${filename}
  toilet -f ${filename} -F crop ${filename}
  toilet -f ${filename} -F gay ${filename}
  toilet -f ${filename} -F border ${filename}
done
}

echo "Bienvenu dans mon script , n'ayez pas peur il va installer automatiquement le paquet Toilet qui fait de jolies titres colorés"

# checking installation of figlet packages
figlet1="/usr/bin/figlet"
figlet2="/usr/bin/X11/figlet"
figlet3="/usr/share/figlet"
figlet4="/usr/share/man/man6/figlet.6.gz"
figlet5="figlet"
if [ -f $figlet1 ] || [ -f $figlet2 ] || [ -f $figlet3 ] || [ -f $figlet3 ] || [ -f $figlet4 ] || [ -f $figlet5 ] ; then

        echo "figlet is already installed"
  sleep 1
else
        sudo apt install figlet -y
fi

sleep 1


# checking installation of toilet packages
toilet="/usr/bin/toilet"
if [ -f $toilet ] ; then
  echo "toilet is already installed"
else
  sudo apt install toilet toilet-fonts -y
fi


sleep 1






toilet -f pagga -F metal "ATELIER 03"
toilet -f pagga -F border "Gestion du materiel"


sleep 1





# echo "la virtualisation est t'elle activer ?"
# sleep 0.5
# echo "La taille de la mémoire vive ?"
# sleep 0.5
# echo "Comment activer la virtualisation ?"
# sleep 0.5
# echo "Qui est le constructeur graphique ?"


NbProc(){
  echo "Quelle est la marque du processeur et nb de cœur ?"
  sleep 0.5
  toilet -f smblock -F metal NbProc
  lscpu | grep Processeur
}

CPUPower(){
  echo "Quelle est la puissance du processeur ?"
  sleep 0.5
  toilet -f future -F gay CpuPower
  lscpu | grep Vitesse
}


Virtual(){
  echo "la virtualisation est t'elle activer ?"
  sleep 0.5
  toilet -f pagga -F border Virtualisation
  lscpu | grep Virtualisation
}

Memory(){
  echo "la taille de la mémoire vive ?"
  sleep 0.5
  toilet -f future -F metal Memory
  cat /proc/meminfo | grep MemTotal
  # free -l
}

SetVirt(){
  echo "Comment activer la virtualisation ?"
  sleep 0.5
  echo "Au démarrage de l’ordi appuyer sur la touch « hotkey » differentes en fonction des machines 
  pour ma part « del » puis activer la virtualisation AMD-v"
  toilet -f smmono9 -F border Activer le bios
}

Graph(){
  echo "Qui est le constructeur graphique ?"
  sleep 0.5
  toilet -f future -F gay Constructeur graphique
  lspci | grep VGA
}


PeriphUSB(){
  echo "Lister les périphériques USB ?"
  sleep 0.5
  toilet -f pagga -F metal USB
  ls -l /dev/usb/
  sudo ls -l /dev/vboxusb/
}

Partition(){
  echo "Lister les partitions ?"
  sleep 0.5
  toilet -f smmono9 -F gay Partitions
  lsblk | grep sda
  ls -l /dev/disk/by-uuid
}



USBdev(){
  sleep 0.5
  toilet -f smmono9 -F border USBdevice
  echo "monitorer les clés usb !"
  lsblk
  sudo dmesg
}

ListHW(){
  sleep 0.5
  toilet -f smmono9 -F border ListHW
  echo "extraire votre configuration au format html!"
  sudo lshw -html > config.html
  ls -l config.html
  firefox config.html
}


count=0

optionshelp=("Nbprocesseurs" "CPUPower" "Virtualisation" "Memoire" "SetVirtualisation" "Graphique" "PeripheriqueUSB" "Partitions" "USBdevice" "ExportConfig" "Quit")

Help(){
    for item in ${optionshelp[*]}
        do
            count=$(( $count + 1 ))
            echo $count
            echo $item
        done
    }


PS3='Que voulez vous voir ?  '


select options in "Nbprocesseurs" "CPUPower" "Virtualisation" "Memoire" "SetVirtualisation" "Graphique" "PeripheriqueUSB" "Partitions" "USBdevice" "ExportConfig" "Help" "Quit"

do
   case $options in
       "Nbprocesseurs")
           NbProc
           sleep 0.5
           Help
           ;;
       "CPUPower")
           CPUPower
           sleep 0.5
           Help
           ;;
       "Virtualisation")
           Virtual
           sleep 0.5
           Help
           ;;
       "Memoire")
           Memory
           sleep 0.5
           Help
           ;;
       "SetVirtualisation")
           SetVirt
           sleep 0.5
           Help
           ;;
       "Graphique")
           Graph
           sleep 0.5
           Help
           ;;
       "PeripheriqueUSB")
           PeriphUSB
           sleep 0.5
           Help
           ;;
       "Partitions")
           Partition
           sleep 0.5
           Help
           ;;
       "USBdevice")
           USBdev
           sleep 0.5
           Help
           ;;
       "ExportConfig")
           ListHW
           sleep 0.5
           Help
           ;;
       "Help")
           Help
           ;;
       "Quit")
           break
           ;;
       *) echo invalid option;;
   esac
done


sleep 2
clear
