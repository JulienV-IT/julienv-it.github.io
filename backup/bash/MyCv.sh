#!/bin/bash

black="\033[30m"
red="\033[31m"
green="\033[32m"
yellow="\033[33m"
blue="\033[34m"
green="\033[32m"
red="\033[31m"
grey="\033[37m"

bold="\033[1m"

reset_color="\033[0m"


#declare -a arr=("------Passione depuis tout jeune, au début des annees 2000------"
#             "---------je me suis interresse au fonctionnement des machines----------,"
#            "----------puis tres vite aux programmes et aux codes qui les composent-----"
#            "----------Je commence le developpement par l'irc avec quelques scripts------"
#            "----------Viens ensuite le debut du html et du css et de fils en aiguilles, je me suis penche sur les languages de plus bas niveau------")
#clear
### boucle sur l'array 
#for j in "${arr[@]}"
#do
#	tam1=$(echo $j | wc -c)
#	tam=$(echo $(($tam1 -1)))
#	for i in $(seq $tam)
#	do
#		sleep 0.1 
#		tput cup 0 $i
#	echo -e $j | cut -c $i       
#	done
#  clear
#done



 


echo -e '\E[31;40m' "\033[1m______ _                                            _                                           _____       \033[0m"; tput sgr0
echo -e '\E[31;40m' "\033[1m| ___ (_)                                          | |                                         /  __ \      \033[0m"; tput sgr0
echo -e '\E[31;40m' "\033[1m| |_/ /_  ___ _ ____   _____ _ __  _   _  ___    __| | __ _ _ __  ___   _ __ ___   ___  _ __   | /  \__   __\033[0m"; tput sgr0
echo -e '\E[31;40m' "\033[1m| ___ | |/ _ | '_ \ \ / / _ | '_ \| | | |/ _ \  / _\` |/ _\` | '_ \/ __| | '_ \` _ \ / _ \| '_ \  | |   \ \ / /\033[0m"; tput sgr0
echo -e '\E[31;40m' "\033[1m| |_/ | |  __| | | \ V |  __| | | | |_| |  __/ | (_| | (_| | | | \__ \ | | | | | | (_) | | | | | \__/ \\ V / \033[0m"; tput sgr0
echo -e '\E[31;40m' "\033[1m\____/|_|\___|_| |_|\_/ \___|_| |_|\__,_|\___|  \__,_|\__,_|_| |_|___/ |_| |_| |_|\___/|_| |_|  \____/ \_/  \033[0m"; tput sgr0
echo -e '\E[31;40m' "\033[1m                                                                                                            \033[0m"; tput sgr0
echo "this shell animation is build for bash /dash";
echo 'this shell animation is build for bash /dash' | tr '[A-Za-z]' '[N-ZA-Mn-za-m]' 


echo -e '\E[31;40m' "\033[1m____   ____ __      .__  .__\033[0m"; tput sgr0
echo -e '\E[31;40m' "\033[1m\   \ /   /|__|__ __|  | |__| ____   ____   \033[0m"; tput sgr0
echo -e '\E[31;40m' "\033[1m \   Y   / |  |  |  \  | |  |/ __ \ /    \  \033[0m"; tput sgr0
echo -e '\E[31;40m' "\033[1m  \     /  |  |  |  /  |_|  \  ___/|   |  \ \033[0m"; tput sgr0
echo -e '\E[31;40m' "\033[1m   \___/\__|  |____/|____/__|\___  >___|  / \033[0m"; tput sgr0
echo -e '\E[31;40m' "\033[1m       \______|                  \/     \/  \033[0m"; tput sgr0





#banner "MonCv" 



echo -e  '\E[33;40m'"\033[1mBienvenue Sur Mon Cv Programmé en Shell bash!\033[0m"; tput sgr0
sleep 1
echo -e '\E[31;40m'"\033[1mDécouvrez Mes Skills! \033[0m"; tput sgr0
sleep 1
echo -e '\E[35;47m'"\033[1mDu Php en passant par AngularJS Jusqu'au Sql \033[0m"; tput sgr0
sleep 1

echo -e '\E[05;47m'"\033[1mle métier d'une vie \033[0m"; tput sgr0



sleep 1

echo  -e '\E[31;40m' "\033[1mPlus qu'une passion un mode de vie \033[0m"; tput sgr0

sleep 1


printf -- '%s\n' "Autodidacte et passioné depuis une 10ene d'années  "

sleep 2

echo "Select an option:"
    echo " * 1: competences"
    echo " * 2: skills"
    echo " * 3: éxperiences"
    echo " * 4: contact"
read NUM

case $NUM in
    1) echo "competences" 
        source lib/compt.sh
        ;;
    2) echo "skills" 
        source lib/skills.sh
        ;;
    3) echo "éxperiences" 
        source lib/exp.sh
        ;;
    4) echo "contact" 
        source lib/contact.sh
        ;;    

    *) echo "INVALID NUMBER!" ;;
esac

#TODO select menu competence projet skillz

#TODO DETECTION OS

######### Current Linux Shell Goodies ###########
#												#
#	 Find here the current goodies avalaible	#	
# 		on the ubuntu repositories, 			#
#	 with a conditionnal loop for auto-install	#
#												#	
#################################################

#train1="/usr/games/sl" 
#train2="/usr/share/man/man6/sl.6.gz" 
#if [ -f $train1 ] || [ -f $train2 ] ; then
#
#sl
#
#else
#
# sudo apt-get install sl && sl
#
#fi
#
#
#
#











#logo1="/usr/bin/linuxlogo" 
#logo2="/usr/bin/X11/linuxlogo"
#logo3="/usr/share/man/man1/linuxlogo.1.gz" 
#if [ -f $logo1 ] || [ -f $logo2 ] || [ -f $logo3 ] ; then
#
#linuxlogo
#
#else
#
# sudo apt-get install linuxlogo && linuxlogo
#
#fi
#
#linuxlogo 2>/dev/null && linuxlogo || echo "Mais ou est mon System préféré ?" && sudo apt-get install linuxlogo



########################### Official Sources Of Asciiquarium ###############################

########################### ASCIIAQUARIUM ###################################
# cd /tmp																	#
# wget http://www.robobunny.com/projects/asciiquarium/asciiquarium.tar.gz	#
# tar -zxvf asciiquarium.tar.gz												#
# cd asciiquarium_1.0/														#
# sudo cp asciiquarium /usr/local/bin 										#
# sudo chmod 0755 /usr/local/bin/asciiquarium 								#
#############################################################################

################################### PERL MODULE NEEDED ##################################		
# sudo apt-get install libcurses-perl													#
# cd /tmp																				#
# wget http://search.cpan.org/CPAN/authors/id/K/KB/KBAUCOM/Term-Animation-2.4.tar.gz	#
# tar -zxvf Term-Animation-2.4.tar.gz													#
# cd Term-Animation-2.4/																#
# perl Makefile.PL && make && make test													#
# sudo make install																		#
#########################################################################################






exit





