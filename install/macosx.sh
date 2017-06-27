#!/bin/bash

sudo xcode-select --install

sudo easy_install pip

sudo CFLAGS=-Qunused-arguments CPPFLAGS=-Qunused-arguments pip install ansible

sudo pip install pip --upgrade
sudo pip install setuptools --upgrade
sudo pip install ansible --quiet
sudo pip install ansible --upgrade

cd ../provisioning/

ansible-playbook site.yml


