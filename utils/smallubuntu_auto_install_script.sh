#!/bin/bash

# http://blog.self.li/post/74294988486/creating-a-post-installation-script-for-ubuntu
if [ -z "$1" ]; then
    echo "Usage: empty arg"
else 
download-all
fi
		
function download-all() {



# add repos
# sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"
# sudo add-apt-repository -y "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
# sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
# sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"
# sudo add-apt-repository -y "deb http://dl.google.com/linux/talkplugin/deb/ stable main"
# sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
# sudo add-apt-repository -y ppa:tuxpoldo/btsync
# sudo add-apt-repository -y ppa:freyja-dev/unity-tweak-tool-daily
# sudo add-apt-repository -y ppa:stefansundin/truecrypt
# sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
# sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

echo "updating"
# basic update
sudo apt-get -y --force-yes update
# sudo apt-get -y --force-yes upgrade

echo "installing"
sudo apt-get install python-software-properties

sudo apt-get install ubuntu-make
sudo umake ide eclipse
sudo apt-get install oracle-java8-installer


}
