#!/bin/bash

echo -e '\E[33;40m'"\033[1mBienvenue sur la page de mes experiences\033[0m"; tput sgr0

									#################
									#				#
									#  EXPERIENCES	#
									#   			#
									#################

echo -e '\E[33;40m'"\033[1mFondateur et Developper a Shambhalafm.fr\033[0m"; tput sgr0

sleep 1

printf -- '%s\n' "C'est à la fin de l'année 2015 que le projet a été mit en place, avec plaisir et détermination, sur des sujets proposés par les auditeurs." 

sleep 1

printf -- '%s\n' "Toujours en Développement, le projet est conçu en php/sql, bootstrap4, css3 et html5." 

printf -- '%s\n' "Je m'emploie à assurer la continuité et le maintien du développement du projet, une version Alpha est en cours. "
sleep 3 




echo -e '\E[33;40m'"\033[1mSeptembre 2016 2tech, Vannes(56)\033[0m"; tput sgr0

sleep 1

printf -- '%s\n' "Développement collaboratif d'un panel de gestion de stock."

sleep 1

printf -- '%s\n' "En charge de la réalisation du projet , j'ai du assurer la conception du site et gérer les différents aspects et contraintes de la commande pour répondre aux besoins du client , ce projet a été développé en php/sql et en bootstrap4/html5/Css3" 

sleep 3




echo -e '\E[33;40m'"\033[1mAoût 2016 Ebulition,CodeAcademie Rennes(35)\033[0m"; tput sgr0


sleep 1

sleep 1

printf -- '%s\n' "Développement collaboratif d'un site vitrine pour faire de la vente de prêt-à-porter"

sleep 1

printf -- '%s\n' "Assurer la promotion du marché de la cliente, avec plusieurs galeries affichant ses produits. Ce projet a été developpé en bootstrap/jquery Html5/Css3 PHP/sql."


sleep 3





echo "Select an option:"
    echo " * 1: competences"
    echo " * 2: skills"
    echo " * 3: contact"
read NUM

case $NUM in
    1) echo "competences" 
        source lib/competences.sh
        ;;
    2) echo "skills" 
        source lib/skills.sh
        ;;
    3) echo "éxperiences" 
        source lib/contact.sh
        ;;

    *) echo "INVALID NUMBER!" ;;
esac



