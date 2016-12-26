  set -e # Stop on any error

  # --------------- SETTINGS ----------------
  # Other settings
  #export DEBIAN_FRONTEND=noninteractive

  sudo apt-get -yq update
  
  # 
   #sudo apt-get -y install dkms
   sudo apt-get -yq install linux-headers-$(uname -r) build-essential dkms

#wget http://download.virtualbox.org/virtualbox/4.3.8/VBoxGuestAdditions_4.3.8.iso
#sudo mkdir /media/VBoxGuestAdditions
#sudo mount -o loop,ro VBoxGuestAdditions_4.3.8.iso /media/VBoxGuestAdditions
#sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
#rm VBoxGuestAdditions_4.3.8.iso
#sudo umount /media/VBoxGuestAdditions
#sudo rmdir /media/VBoxGuestAdditions

  # ---- OSS AUDIO
  #sudo usermod -a -G audio vagrant
  #sudo apt-get install -y oss4-base oss4-dkms oss4-source oss4-gtk linux-headers-3.2.0-23 debconf-utils
  #sudo ln -s /usr/src/linux-headers-$(uname -r)/ /lib/modules/$(uname -r)/source || echo ALREADY SYMLINKED
  #sudo module-assistant prepare
  #sudo module-assistant auto-install -i oss4 # this can take 2 minutes
  #sudo debconf-set-selections <<< "linux-sound-base linux-sound-base/sound_system select  OSS"
  #echo READY.

  # have to reboot for drivers to kick in, but only the first time of course
  #if [ ! -f ~/runonce ]
  #then
  #  sudo reboot
  #  touch ~/runonce
  #fi

     #https://wiki.ubuntu.com/Audio/UpgradingAlsa/DKMS
     #wget http://ppa.launchpad.net/ubuntu-audio-dev/alsa-daily/ubuntu/pool/main/o/oem-audio-hda-daily-dkms/oem-audio-hda-daily-dkms_0.201509251532~ubuntu14.04.1_all.deb
     #sudo dpkg -i oem-audio-hda-daily-dkms_0.201509251532~ubuntu14.04.1_all.deb
     #rm oem-audio-hda-daily-dkms_0.201509251532~ubuntu14.04.1_all.deb
     #sudo apt-get -y install python-dev ipython python-numpy python-matplotlib python-scipy cython alsa-utils paman
     #sudo usermod -a -G audio vagrant
  
  
  echo VAGRANT READY
  