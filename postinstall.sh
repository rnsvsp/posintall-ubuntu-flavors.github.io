#!/bin/bash
#   Autor: Raphael Souza
#   Data: 04/10/2019

#Removendo travas eventuais do apt
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archibes/lock

#Atualizando sistema
sudo apt update -y; sudo apt upgrade -y;

#Instalando ferramentas essenciais no repositório
sudo apt install vlc -y
sudo apt install transmission -y
sudo apt install obs-studio -y
sudo apt install ubuntu-restricted-extras -y
sudo apt install chromium-browser -y
sudo apt install telegram-desktop -y
sudo apt install zsh -y
sudo apt install mint-meta-codecs -y

#Instalação de programas externos
mkdir /home/$USER/Downloads/Programas
cd /home/$USER/Downloads/Programas

#VS Code
wget -c https://az764295.vo.msecnd.net/stable/b37e54c98e1a74ba89e03073e5a3761284e3ffb0/code_1.38.1-1568209190_amd64.deb

#4k Downloader Video
wget -c https://dl.4kdownload.com/app/4kvideodownloader_4.9.2-1_amd64.deb

sudo dpkg -i *.deb
sudo apt install -f -y

#Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
