#!/usr/bin/env bash

echo "Configuring Hybris via recipes..."

HYBRISDIR="/opt/hybris65" 
echo "Setting JAVA_HOME Variable.."
export JAVA_HOME=/opt/jdk1.8.0_131

echo "Installing b2c_b2b accelerator..."
cd $HYBRISDIR/installer
./install.sh -r b2c_b2b_acc

echo "Initializing b2c_b2b accelerator..."
./install.sh -r b2c_b2b_acc initialize

echo "Finished configuration."