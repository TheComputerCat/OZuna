#!/bin/bash

set -e

CURR_USER_UID=$1
CURR_USER_GID=$2
VOLUME=$3

mkdir -p /home/user

groupadd -f -g $CURR_USER_GID grp
useradd -M -N -u $CURR_USER_UID -G $CURR_USER_GID -d /home/user user
echo "cd $VOLUME" >> /home/user/.profile

su - -s /bin/bash  user
