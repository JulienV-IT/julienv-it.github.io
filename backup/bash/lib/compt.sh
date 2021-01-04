#!/bin/bash


echo -e '\E[33;40m'"\033[1mBienvenue sur la page de mes competences\033[0m"; tput sgr0



echo "Select an option:"
    echo " * 1: contact"
    echo " * 2: skills"
    echo " * 3: éxperiences"
read NUM

case $NUM in
    1) echo "contact" 
        source contact.sh
        ;;
    2) echo "skills" 
        source lib/skills.sh
        ;;
    3) echo "éxperiences" 
        source lib/exp.sh
        ;;

    *) echo "INVALID NUMBER!" ;;
esac


done 
