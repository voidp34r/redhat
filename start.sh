#!/bin/bash
sudo yum repolist
sudo yum update
sudo wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo rpm -ivh epel-release-latest-7.noarch.rpm
sudo yum install dfn -y
sudo yum install -y zlib.i686 ncurses-libs.i686 bzip2-libs.i686
sudo yum repolist

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

yum check-update
sudo yum -y install code

sudo yum -y install -y gcc-c++ make
sudo curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash -
sudo yum -y install nodejs
node -v

sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo yum -y install redhat-lsb libXScrnSaver
sudo yum -y localinstall google-chrome-stable_current_x86_64.rpm

sudo yum -y update google-chrome-stable

