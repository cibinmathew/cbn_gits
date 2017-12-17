# platform-independent-package-installer aliases https://gist.github.com/rroblak/8137276
source platform-independent-package-installer.sh


#﻿ranger:
#	remove from scope.sh , exe,iso file preview handling to improve performance


#fzf completion
#vim PlugInstall


#https://ascending.wordpress.com/2011/02/11/unix-tip-make-less-more-friendly/

#add C:\cygwin64\usr\local\bin to path



# RPi https://gist.github.com/johnantoni/8199088 send ip to mail.

# try  https://github.com/lra/mackup
# make a section for installing only imp functions and tools for debugging/.... in a remote or raspberry pi like network debugging
# a bash command which wgets a github file and sets aliases and functions for easy debugging.. no installs.. asks if to install; again ask if to install more advanced tools
#
# make it work for ubuntu,centos, windows
# imp tools/cygwin equivalents, less imp tools/cygwin equivalents
# bash config,imp tools config, less imp tools configs
#
# todo next
# emacs config
# convert all /cygdrive/c... to $Universal_home
# variable platform(windows,linux,mac); os(ubuntu,fedora,osx)
#
# auto startup script/ cron based on os
# create separate file for cron_job_cibin

# move this file to git "$cbn_git_path/cbn_gits/AHK/popular_commands.db"
#
# myindex paths to /media/cibin/8.1 or pics
# https://www.linux.com/news/start-programs-pro-xbindkeys
# scf does  not work from s then c
# alias cibin-sudo=sudo if linux else ''
# add this to updatedb

pacu # sudo apt-get update/ yum update
paci curl
paci wget
paci make

#######################
# BASH config
######################


# TODO
# git clone to ~ not working


git clone https://github.com/cibinmathew/my-dotfiles.git ~/my-tmp-git
find ~/my-tmp-git/ -mindepth 1 -maxdepth 1 -exec mv -f -t ~/ -- {} +

echo "downloading ..."
wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/ported_files/cibin/.bashrc -O ~/.bashrc
wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/ported_files/cibin/my.bashrc -O ~/my.bashrc

wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/ported_files/cibin/my.keybindings.sh -O ~/my.keybindings.sh
wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/ported_files/cibin/lib.sh -O ~/lib.sh
wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/ported_files/cibin/misc_lib.sh -O ~/misc_lib.sh
wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/ported_files/cibin/set_defaults.sh -O ~/set_defaults.sh
wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/ported_files/cibin/myalias.sh -O ~/myalias.sh
wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/ported_files/cibin/search_functions.sh -O ~/search_functions.sh
wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/ported_files/cibin/essential_functions.sh -O ~/essential_functions.sh





#################
#   imp tools   #
#################

paci git

# vim
paci vim
#vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# TODO verdana font error in linux in org-settings.el
# emacs
#http://wikemacs.org/wiki/Installing_Emacs_on_GNU/Linux
paci emacs                  # centos/redhat/fedora
paci emacs25

# mac oS available in spacemacs page

# spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d


# VLC
paci vlc browser-plugin-vlc

# clipboard tools
paci xclip


## TODO cd to tmp directory
mkdir ~/tmp-installers
cd ~/tmp-installers



## ranger

# paci ranger
# or
git clone https://github.com/hut/ranger.git
cd ranger
sudo make install
# We will also install some other applications that allow ranger to preview various file formats effectively.
#if debian
paci caca-utils highlight atool w3m poppler-utils mediainfo

# TODO
## for windows
## works only with cygwing python
## make install This translates roughly to:
## python setup.py install --optimize=1 --record=install_log.txt # specify python path here


# python anaconda
# https://www.digitalocean.com/community/tutorials/how-to-install-the-anaconda-python-distribution-on-ubuntu-16-04



# git clone git://git.savannah.nongnu.org/ranger.git
# or
# tar xvf ranger-stable.tar.gz
# cd ranger-stable
# cd ranger



########################
#   imp tools config   #
########################



# Ranger
wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/ported_files/cibin/.config/ranger/rc.conf -O ~/.config/ranger/rc.conf
wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/ported_files/cibin/.config/ranger/commands.py -O ~/.config/ranger/commands.py

# vim config
wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/ported_files/cibin/.vimrc -O ~/.vimrc
wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/ported_files/cibin/my.vimrc -O ~/my.vimrc
wget --no-check-certificate https://github.com/cibinmathew/cbn_gits/raw/master/ported_files/cibin/my.guide.vim -O ~/my.guide.vim
# call inside vim :PlugInstall to install all plugins

# OR

# PlugInstall autoexecute https://github.com/raghur/vimfiles/blob/master/_vimrc


####################
#   other tools    #
####################

# Ag
paci silversearcher-ag

# TODO ack not working
# ack
#curl https://beyondgrep.com/ack-2.18-single-file > ~/bin/ack && chmod 0755 ~/bin/ack


### z fuzzy cd completion
git clone https://github.com/rupa/z.git ~/my-scripts/z


# TODO fzf not found in terminal on typing
# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/my-scripts/fzf

# this is interactive
sudo ~/my-scripts/fzf/install

### FASD
git clone https://github.com/clvv/fasd.git ~/my-scripts/fasd
cd ~/my-scripts/fasd
sudo make install

# fzy
git clone https://github.com/jhawthorn/fzy.git  ~/my-scripts/fzy
cd ~/my-scripts/fzy
sudo make install
# TODO in windows
# make install

# TODO
# Sublime
# https://www.tecmint.com/install-sublime-text-editor-in-linux/



# Ubuntu/debian xbindkeys
# https://www.linux.com/news/start-programs-pro-xbindkeys
paci xbindkeys xbindkeys-config
# to refresh, first kill $killall -HUP xbindkeys
# restart $xbindkeys



####################
#   other tools config   #
####################


# terminal prompt git info
# https://stackoverflow.com/questions/12870928/mac-bash-git-ps1-command-not-found
curl -o ~/.git-prompt.sh \
    https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh






# prompt for a reboot
clear
echo ""
echo "===================="
echo " TIME FOR A REBOOT! "
echo "===================="
echo ""

#####################################
# SHORTCUT/AUTOMATION TOOLS
####################################

#Space2Ctrl
#Prerequisites:   Install X11 and XTEST development packages. On Debian GNU/Linux derivatives:
paci libx11-dev libxtst-dev
paci gcc
paci g++
git clone https://github.com/r0adrunner/Space2Ctrl.git  ~/my-scripts/Space2Ctrl
cd ~/my-scripts/Space2Ctrl
make
# sudo make install

# run this ~/my-scripts/Space2Ctrl/s2cctl start

# xcape has more options

# https://github.com/alols/xcape
# capslock to escape
# http://tiborsimko.org/capslock-escape-control.html
# linux & mac http://www.economyofeffort.com/2014/08/11/beyond-ctrl-remap-make-that-caps-lock-key-useful/
#####################
# VERY LESS USED/ DEVELOPMENT Tools
#######################

# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# ncurses library
sudo apt-get install libncurses5-dev libncursesw5-dev

# TODO install tig git interface
paci tig

# diff tools
paci meld
