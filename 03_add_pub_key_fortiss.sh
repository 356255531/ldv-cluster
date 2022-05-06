#!/bin/bash

if [ -e ${HOME}/.ssh/id_rsa.pub ]
then
  echo "rsa key exists!"
else
  ssh-keygen -t rsa
fi

# Copy to fortiss server
USERNAME="root"
HOSTNAME="fortiss-2080-ws01"
ssh-copy-id -i ~/.ssh/id_rsa.pub $USERNAME@$HOSTNAME -p 52022