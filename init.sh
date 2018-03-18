#!/bin/bash
sudo apt-get update
sudo apt-get install -y git python-pip python-dev
sudo pip install ansible
cd /tmp
git clone https://github.com/EricWayneWhite/ansible-workstation.git
cd ansible-workstation
sed -i "s/git@github.com:/https:\/\/github.com\//" .gitmodules
git submodule init
git submodule update
ansible-playbook main.yml --sudo -K -c local -i "localhost,"
