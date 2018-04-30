#!/usr/bin/env bash

HYBRISDIR="/opt/hybris65" 

cd $HYBRISDIR/hybris/bin/platform
echo "Starting the Hybris Server.."
./hybrisserver.sh
