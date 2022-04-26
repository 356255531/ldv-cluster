#!/bin/bash

if [ -e ${HOME}/.ssh/id_rsa.pub ]
then
  echo "rsa key exists!"
else
  ssh-keygen -t rsa
fi

USERNAME="ga63vuf"
HOSTNAME="hpc01.clients.eikon.tum.de"
cat ${HOME}/.ssh/id_rsa.pub | ssh -l ${USERNAME} ${HOSTNAME} ' cat >>.ssh/authorized_keys'