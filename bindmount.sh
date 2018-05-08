#!/bin/bash

HYBRISDIR="/opt/hybris65" 

echo "Creating local custom dir if it does not exist"
if [[ ! -d /vagrant/custom ]]; then
    mkdir /vagrant/custom
fi

echo "Ensuring bindmount..."
if [[ `mount | grep custom` == "" ]]; then
    sudo mount --bind /vagrant/custom $HYBRISDIR/hybris/bin/custom
fi
