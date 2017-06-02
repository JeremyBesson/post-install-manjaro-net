# pos-install-manjaro-net

POST INSTALL MANJARO

https://manjaro.github.io/Manjaro-Gnome-16.06/

# SETUP #

#### synchroniser les repo ####

sudo pacman -Syy

#### faire les mises a jour globales ####

yaourt -Syu

#### gérer la swapiness a 95 ####

echo vm.vfs_cache_pressure=50 | sudo tee /etc/sysctl.d/99-swappiness.conf

sudo sysctl -p /etc/sysctl.d/99-swappiness.conf

#### gérer le microcode intel (processeur intel) ####

sudo pacman -S intel-ucode

#### gérer la consommation (tlp et Gufw deja installé) ####

sudo tlp start

sudo systemctl enable tlp

sudo systemctl enable tlp-sleep

#### firewall ####

yaourt -S ufw

sudo ufw enable

sudo systemctl enable ufw

### installer flux ###

yaourt -S xflux

*Si jamais pb : "sorry-we-only-support-8-and-10-bit-displays-right-now"*
*Edit /etc/gdm/custom.conf to use Xorg instead of Wayland. Uncomment this line:*
*WaylandEnable=false*


#### installer VLC ####
pacman -S vlc

#### installer mlocate ####
pacman -S mlocate

#### REINSTALLER ARCHLINUX-KEYRING en cas de bugs sur du Sy ####
sudo pacman -S archlinux-keyring


*SI LE WIFI SAUTE SOUVENT ( wiki RealTek module RTL8723BE )*
*https://angristan.fr/resoudre-les-problemes-avec-le-module-wifi-rtl8723be-sous-linux/*

# DEVELOPPEMENT #

#### installer Brackets ####
yaourt -Sy brackets


#### Installer environnement LAMP ####
*https://wiki.archlinux.fr/LAMP*
*! MPM bordel be careful pour phpMyAdmin*

#### installer nodeJS ####
sudo pacman -S nodejs


*installer AOEII : http://www.gamersonlinux.com/forum/threads/age-of-empires-2-hd-guide.1041/
http://www.gamersonlinux.com/forum/threads/age-of-empires-2-hd-guide.1041/*

# look & feel #

*gtk+ ==> cloack 3 20, arc, arc-dark, arc-darker
icons==> mist
cursor ==> breeze
shell ==> mist*

# LIENS UTILES #

Pacman Rosette : https://wiki.archlinux.org/index.php/Pacman/Rosetta

Manjaro Wiki : https://wiki.manjaro.org/index.php/Main_Page

Post-Install : https://dolys.fr/forums/topic/mon-installation-post-installation-manjaro/

Themes Gnome : https://titanpad.com/gnomethemes

Install NET / Gnome :  https://www.manjaro.fr/forum/viewtopic.php?f=24&t=2606  

RESTAURER LE GRUB : https://wiki.manjaro.org/index.php/Restaurer_le_chargeur_de_d%C3%A9marrage_GRUB
   
# Install #


#### Creer une clef bootable : Suse ImageWriter ####

yaourt -S community/imagewriter
  

> **ZSH :**

> - yaourt -S zsh --noconfirm --needed
> - zsh
> - git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
> - setopt EXTENDED_GLOB
> - for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
> - done
> - chsh -s /bin/zsh
> - source .zshrc
    


