#!/bin/bash

if [ -e ${HOME}/.ssh/id_rsa.pub ]
then
  echo "rsa key exists!"
else
  ssh-keygen -t rsa
fi

# Copy to ldv server
USERNAME="ga63vuf"
HOSTNAME="ldv-3090-ws01"
ssh-copy-id -i ~/.ssh/id_rsa.pub $USERNAME@$HOSTNAME