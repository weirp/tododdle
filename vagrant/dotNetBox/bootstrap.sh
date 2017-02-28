#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
apt-get install -y emacs
apt-get install -fy /vagrant/code_1.9.1-1486597190_amd64.deb

curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
apt-get install -y nodejs
apt-get install -y build-essential
apt-get install -y git

npm install -g yo
npm install -g bower
npm install -g gulp

if ! [ -L /var/www ]; then
    rm -rf /var/www
    ln -fs /vagrant /var/www
fi


# currently probs running vscode in virtualbox.
# need to run code --diable-gpu
#

npm install -g generator-webapp
npm install -g generator-aspnetcore
npm install -g generator-aspnet
npm install -g generator-react-static
npm install -g generator-powermvc
npm install -g generator-react-webpack

npm install -g generator-react-aspnet-boilerplate
npm install -g generator-vue-net-core
# .net core
sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ yakkety main" > /etc/apt/sources.list.d/dotnetdev.list'
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 417A0893
apt-get update
apt-get install -y dotnet-dev-1.0.0-preview2.1-003177

# look at the following ... to install dnx
# https://docs.microsoft.com/en-us/azure/app-service-web/web-sites-create-web-app-using-vscode

# this one looks the biz
# http://www.dotnetcurry.com/aspnet/1234/aspnet5-apps-using-visual-studio-code-vscode-yeoman


# code --install-extension ms-vscode.csharp
