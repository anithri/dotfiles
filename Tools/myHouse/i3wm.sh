#!/bin/bash
sudo apt install -y wget ca-certificates git curl yadm

#
# postgres
#
if [ ! -d /etc/apt/sources.list.d/pgdg.list ]; then
  sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
  wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
fi

#
# i3wm
#
if [ ! -e /etc/apt/sources.list.d/sur5r-i3.list ]; then
  /usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2019.02.01_all.deb keyring.deb SHA256:176af52de1a976f103f9809920d80d02411ac5e763f695327de9fa6aff23f416
  sudo dpkg -i ./keyring.deb
  sudo sh -c 'echo "deb http://debian.sur5r.net/i3/ $(grep ^DISTRIB_CODENAME= /etc/lsb-release | cut -f2 -d=) universe" > /etc/apt/sources.list.d/sur5r-i3.list'
fi

#
# defaults
#
sudo apt update

sudo apt install -y tree ack build-essential dirmngr gpg openssh-client openssh-server autoconf bison libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev postgresql-10 pgadmin4 zsh i3 direnv autojump 

