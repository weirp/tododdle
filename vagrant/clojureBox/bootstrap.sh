#!/usr/bin/env bash

add-apt-repository ppa:webupd8team/java

apt-get update
apt-get install -y apache2
apt-get install -y emacs
apt-get install -y git

if ! [ -L /var/www ]; then
    rm -rf /var/www
    ln -fs /vagrant /var/www
fi

echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 seen true" | debconf-set-selections

apt-get install -y oracle-java8-installer
apt install -y oracle-java8-set-default

#prelude
wget --no-check-certificate https://github.com/bbatsov/prelude/raw/master/utils/installer.sh -O - | sh

wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod +x lein
mv lein /usr/bin/
lein new app leinInstall
cd leinInstall
lein deps
