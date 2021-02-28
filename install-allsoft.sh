#!/bin/bash

# TODO: first detect if this is the first time installation or first time user is logged in or maybe compare the fstab file length
# then copy the fstab  file content for mounting partiion

#Update the package index:
# sudo apt-get update

echo "Installing xclip for clipboard selector.."
sudo apt install xclip

echo "Installing devscripts for checking various repositories information and all. For example.  rmadison dolphin"
sudo apt install devscripts

echo "Installing  ebook reader.."
sudo apt-get install fbreader -y

echo "Installing default java gre.."
sudo apt-get -y install default-jre

echo "Installing gparted.."
sudo apt-get install gparted -y

echo "Ncdu is a ncurses-based du viewer that allows to browse through the directories and show percentages of disk usage. Installing ncdu.."
sudo apt install ncdu -y

echo "Installing virtualbox.."
sudo apt install virtualbox

#Install elementary tweaks
#sudo apt install software-properties-common
#sudo add-apt-repository ppa:philip.scott/elementary-tweaks
#sudo apt install elementary-tweaks -y

#playonlinux
#wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
#sudo wget http://deb.playonlinux.com/playonlinux_bionic.list -O /etc/apt/sources.list.d/playonlinux.list
#sudo apt-get update
#sudo apt-get install playonlinux -y

# reduce amount of running tasks in the background
#  Radio device wizard is an add-on to TLP. It provides event based
# switching of:
#  - Bluetooth, Wi-Fi, WWAN radio devices
#  - upon network connect/disconnect
#  - and dock/undock.
# TLP supplies separate settings profiles for AC and battery power and can
# enable or disable Bluetooth, Wi-Fi and WWAN radio devices upon system startup.
#sudo apt install tlp tlp-rdw  -y

# to make some old tray icons visible in the top bar for third-party apps
#sudo nano /etc/xdg/autostart/indicator-application.desktop
#OnlyShowIn=Unity;GNOME;Pantheon;

#sudo add-apt-repository ppa:yunnxx/elementary
#sudo apt update
#sudo apt install indicator-application wingpanel-indicator-ayatana
#sudo service lightdm restart

echo "Installing git.."
sudo apt install git -y

# wingpanel monitor
# https://www.linuxslaves.com/2018/10/install-wingpanel-system-monitor-indicator-elementary-os-juno.html
# https://github.com/PlugaruT/wingpanel-monitor
#sudo apt install libgtop2-dev libgranite-dev libgtk-3-dev libwingpanel-2.0-dev meson valac libgeoclue-2-dev libgweather-3-dev
#meson build --prefix=/usr
#cd build
#ninja
#sudo ninja install
#com.github.plugarut.wingpanel-monitor

# Linux apt vs apt-get tips https://www.linux-magazine.com/Issues/2018/208/apt-vs.-apt-get
#apt policy <packagename>
#apt upgrade
#apt show <package>

# make auto plank disaaper and reappear, make sure to make it executable by chmod +x autoplank
#https://github.com/olback/autoplank

# DISABLED BECAUSE NOT AVAILABLE DIRECTLY FOR FOCAL FOSSA UNTIL 06062020 date
# To install terminology one of the terminal for linux
# sudo add-apt-repository ppa:enlightenment-git/ppa -y
# sudo apt-get update
# sudo apt-get install terminology -y

echo "installing vnstat for network monitoring.."
sudo apt install vnstat -y

echo "installing another iftop for displaying network bandwidth"
sudo apt install iftop -y

echo "Installing kodi.."
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:team-xbmc/ppa -y
sudo apt-get update
sudo apt-get install kodi -y

echo "installing gimp and installable package for image scanner.."
sudo apt-get install gimp -y
sudo apt install xsane -y

echo "installing HP printer driver from the repositories.."
sudo apt-get purge hplip -y
sudo apt-get install hplip python3-pyqt5 -y
#then run
#hp-setup

# install gnome system monitor
# sudo apt install gnome-system-monitor -y

echo "Installing Synaptic for checking more detail information about packages and dependencies.."
sudo apt install synaptic  -y

echo "installing net tools for running command like netstat etc.."
sudo apt install net-tools -y

#for handling drive mounting https://elementaryos.stackexchange.com/questions/215/how-to-setup-your-ntfs-drives-partitions-to-mount-on-elementary-os-startup
echo "installing gnome disk utility for managing the disk and utilities.."
sudo apt-get install gnome-disk-utility -y

echo "installing mediainfo for checking duration of a media and other information.."
# usage: mediainfo something.mp4 --Output="General;%Duration/String2%" input
sudo apt install mediainfo mediainfo-gui -y

# install thunderbird . Install plugins (Tbsync, 'Provider for exchange activesync, provider for caldav & carddav', lightning, deepdark )
# Tricks (configeditor: mailnews.default_sort_order-> 2, mailnews.default_news_sort_order-> 2)
# sudo apt-get install thunderbird -y

echo "Installing brave browser.."
sudo apt install apt-transport-https curl -y
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

echo "installing eye care for easy break.."
sudo add-apt-repository ppa:slgobinath/safeeyes -y
sudo apt update
sudo apt install safeeyes -y

echo "Installing mlocate application for fast searching by reindexing everything in a central db and searching it from there.."
sudo apt install mlocate -y
sudo updatedb

# THIS HAS BEEN REPLACED WITH SNAPSTORE
# Install docker
# sudo apt-get install     apt-transport-https     ca-certificates     curl     gnupg-agent     software-properties-common docker-ce docker-ce-cli containerd.io -y

echo "installing python..."
sudo apt install python3-pip -y

# THIS IS REPLACED FROM SNAPSTORE
# Install sublime text
#wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
#echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
#sudo apt-get update && sudo apt-get install sublime-text

echo "installing whois for checking IPs and other information from terminal.."
sudo apt install whois -y

################# Snap store applicaitons installation started ##########
echo "Starting applications installation from snap store....."

echo "installing tux as a default evernotes viewer"
sudo snap install tusk

# echo "installing android studio.."
#sudo apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
#sudo snap install android-studio --classic

echo "Installing vlc media player.."
sudo snap install vlc

# Install intellij ultimate
sudo snap install intellij-idea-ultimate --classic

# install sublime text
sudo snap install sublime-text --classic

echo "installing docker.."
sudo snap install docker
#for post installation of docker
echo "Creating the docker group.."
sudo groupadd docker
echo "Adding your user to the docker group.."
sudo usermod -aG docker $USER
echo "Log out and log back in so that your group membership is re-evaluated.."
newgrp docker

# install libre office
# sudo snap install libreoffice

# install onlyoffice desktop editors
# sudo snap install onlyoffice-desktopeditors

echo "Applications installation from snap store is finished..."
sleep 1
################ Snap store applicaitons installation ended ##########











# Star Linux configurations
echo "Starting to configure swap memory from 2GB default size to 8GB.."
# To create bigger swap file
#In the following example, we’ll extend the swap space available in the /swapfile from 2 GB to 8 GB.
#Turn off all swap processes
sudo swapoff -a
#Resize the swap
sudo dd if=/dev/zero of=/swapfile bs=1G count=8
#if = input file
#of = output file
#bs = block size
#count = multiplier of blocks
#Make the file usable as swap
sudo mkswap /swapfile
#Activate the swap file
sudo swapon /swapfile
#Check the amount of swap available
echo "creating 8GB swapfile is compelte. Now total swap file size is "
grep SwapTotal /proc/meminfo

# decrease swap usage so that swap would be only used when ram reaches to 95% full
cat /proc/sys/vm/swappiness
sudo sysctl vm.swappiness=5
cat /proc/sys/vm/swappiness
# in order to make permanent changes after reboot that swap file is utlized only when RAM reaches below 5
# edit file sudo nano /etc/sysctl.conf
# and add vm.swappiness = 5
sudo echo "vm.swappiness = 5" >>  /etc/sysctl.conf
sudo sysctl -p

sleep 2

# This will append all the bash history of other terminal as soon as command is excuted
# https://superuser.com/questions/555310/bash-save-history-without-exit
export PROMPT_COMMAND='history -a'
echo "bash history is now appended successfully with each terminal opening..."

# might be good idea to check if ufw is installed or not as well TODO:
#https://www.digitalocean.com/community/tutorials/how-to-setup-a-firewall-with-ufw-on-an-ubuntu-and-debian-cloud-server
echo "configuring ubuntu fire wall configuration"
sudo ufw status verbose
sudo ufw enable
sudo ufw logging high
sudo ufw status verbose
echo "making all ufw logs visible only in ufw's own log file.."
sudo sed -i 's/#&\sstop/\& stop/g'  /etc/rsyslog.d/20-ufw.conf
sudo service rsyslog restart
# END linux configurations




##########################-------- Kubuntu specific installation process goes from here ----------#########
KUBUNTU=$(cat /etc/os-release | grep -i kubuntu | wc -l)

if [ "$KUBUNTU" == "0" ]; then
    echo "You are running Ubuntu. Ubuntu specific installation procedure will begin now.."
	# Install the brightness controller form  linux
	sudo add-apt-repository ppa:apandada1/brightness-controller -y
	sudo apt update
	sudo apt install brightness-controller -y

    	# Installed complete multimedia support for multimedia codecs and plugins
	sudo apt install ubuntu-restricted-extras -y
	sudo apt ubuntu-restricted-addons -y

	#Install dolphin deb package:
	sudo apt-get install dolphin -y

	# ubuntu-drivers autoinstall
	sudo ubuntu-drivers autoinstall

	# Install linux gnome extensions
	# https://linuxconfig.org/how-to-install-gnome-shell-extensions-on-ubuntu-20-04-focal-fossa-linux-desktop
	sudo apt install gnome-shell-extensions -y
	# https://addons.mozilla.org/en-US/firefox/addon/gnome-shell-integration

	# Install variety desktop wall paper changer
	sudo apt install variety -y


	### ubuntu specific settings ###
	echo "starting to disable auto mute option..."
	amixer -c 0 sset "Auto-Mute Mode" Disabled
	echo "auto mute mode has been disabled successfully!"

	### ubuntu specific settings finished ""

else
    echo "you are running kubuntu. Kubuntu specific installation procedure will begin now.."
	sleep 1
	# Installed complete multimedia support for multimedia codecs and plugins
	sudo apt install kubuntu-restricted-extras -y
	sudo apt install kubuntu-restricted-addons -y
fi
##########################-------- Kubuntu specific installation process ends here ----------#########

#something is wrong here as this both command results in different output. Something is wrong with the space in between after piping
# history | grep -i addons
# history | grep -i addons
# history |   less

# Install ttf mscorefonts installer. Install at last, because terms and condition has to be agreed in different pop up window
wget http://ftp.de.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.8_all.deb
sudo dpkg -i ttf-mscorefonts-installer_3.8_all.deb

#for setting up the printer
hp-setup



## To uninstall any packages run this command
#  sudo apt --purge remove <package name>
## To remove all the configurations and dependencies as well
# sudo apt --purge autoremove
