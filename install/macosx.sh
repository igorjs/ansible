#!/bin/bash

# TODO
sudo easy_install pip

sudo CFLAGS=-Qunused-arguments CPPFLAGS=-Qunused-arguments pip install ansible

sudo pip install pip --upgrade
sudo pip install setuptools --upgrade
sudo pip install ansible

cd ../provisioning/

ansible-playbook site.yml
