#!/bin/bash


figlet1="/usr/bin/figlet" 
figlet2="/usr/share/figlet"
figlet3="/usr/share/man/man6/figlet.6.gz" 
if [ -f $figlet1 ] || [ -f $figlet2 ] || [ -f $figlet3 ] ; then



 sudo apt-get install figlet 

fi

echo -e '\E[33;40m'"\033[1mDecouvrez mes Skills\033[0m"; tput sgr0



n=0
tabl[1]="un peu de C"
tabl[2]="Beaucoup de php"
tabl[3]="Du JavaSript"
tabl[4]="sans oublier leHtml"
tabl[5]="et Kali pour etre sur"

	

#while [ ! $n= "6" ]


#while [ $n -le 5 ]
#do
	
	

    printf -- "%s\n" "Skills:" 
	
    sleep 0.5
    for item in ${tabl[*]}
do
	sleep 0.5
    
    figlet  "$item" 
	n=$(( $n + 1 ))
	
    
	

done





exit 0


echo "Select an option:"
    echo " * 1: competences"
    echo " * 2: contact"
    echo " * 3: éxperiences"
read NUM

case $NUM in
    1) echo "competences" 
        source lib/contact.sh
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
