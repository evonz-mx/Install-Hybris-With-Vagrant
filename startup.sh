#!/usr/bin/env bash

HYBRISDIR="/opt/hybris65" 

echo "Setting JAVA_HOME Variable.."
export JAVA_HOME=/opt/jdk1.8.0_131
echo "Starting the Hybris Server.."
cd $HYBRISDIR/installer
./install.sh -r b2b_acc start
