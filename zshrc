#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
#
alias ll='ls -la' 
alias pingtest='ping 8.8.8.8' 


function bkp_symfonytest { 
	    mkdir /home/zolano/Documents/WebSources/TourplannerV2/$1 
	        cp -R /srv/http/SyTest/* mkdir /home/zolano/Documents/WebSources/TourplannerV2/$1/ 
		    echo "backup done" 
	    }

#Aliases persos utiles
alias cdww='cd /srv/http/' 
alias vi='vim' 
alias flux-night='xflux -l 45 -g 4 -k' 
alias flux-day='xflux -l -43 -g 172 -k'
alias flux-kill='killall xflux'
alias clear="clear ; archey3"
alias sycache-clear='sudo rm -rf app/cache/*; sudo chmod -R 777 app/cache'
alias syconsole='php app/console'

#Aliases de changement de gnome GTK theme
alias arc-theme='gsettings set org.gnome.desktop.interface gtk-theme "Arc"'
alias arcdark-theme='gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"'
alias arcdarker-theme='gsettings set org.gnome.desktop.interface gtk-theme "Arc-Darker"'
alias cloak-theme='gsettings set org.gnome.desktop.interface gtk-theme "Cloak-3.20"'



if [[ $TERMINIX_ID ]]; then
        source /etc/profile.d/vte.sh
fi

prompt damoekri

clear
