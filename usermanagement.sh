#!/bin/bash



#------ groupINFO ----
cat /etc/group
groups
groups stag
id stag


# ------ group commands ----

# add new group
echo "what is the name of the new group ? : "

# read group
# sudo groupadd $group  # will to be compta


# edit group
#groupmod -n newgroupname group

# remove group
#grouddel

# remove user from group 

# grpasswd -d user group


# ----- user info ----
#  who is connected
who


# -- adding user--
# -m home folder
# -g primary group 
# -G secondary group 
# -s what shell is used by user

# useradd -m -g grpdefault -G secondarygroup -s login_shell username


# -d Specify another folder than home (need to create folder path and new group before)

# sudo mkdir -p /srv/unite/compta/jdupont
read -p "create dir srv/unite/compta/jdupont before adding it to good group" BREAKING

# sudo useradd -m -g compta -d /srv/unite/compta/jdupont -s /bin/bash jdupont

# -c just add a commentary for help to read 
# sudo useradd -m -g compta -d /srv/unite/compta/jdupont -s /bin/bash -c "Jean Dupont" jdupont

# nologin block shell  for the user
# useradd -r -s /usr/sbin/nologin username 



# chage
# manager user and its password lifetime
#sudo chage jdupont

# usermod 
# let us to add an secondary group without delete the primary 
# sudo usermod -aG commercial jdupont

# userdel
# lets us to delete all user configuration 
# sudo  userdel -r jdupont


mdp="!NickTaGrandMereBiatch974!"

echo -n ${mdp} | wc -m 


