#!/bin/bash

USERNAME=ga63vuf
HOSTNAMES="
ldv-3090-ws01
ldv-titanx-ws01
ldv-titanx-ws02
ldv-2060-ws01
ldv-2060-ws02
ldv-2060-ws03
ldv-2060-ws04
ldv-2060-ws05
ldv-2060-ws06
fortiss-2080-
"

SCRIPT_1="
screen -d -S create_docker -m \
docker run -d --gpus all -it --shm-size=128G -p 52022:22 -p 52066:6006  -p 5205:5000 --name ga63vuf \
-v /nas/netstore/ldv/ga63vuf/Datasets:/root/Datasets -v /nas/netstore/ldv/ga63vuf/WorkSpace:/root/WorkSpace \
356255531/cuda-ssh-torch:cu114-py38-torch11
"

SCRIPT_2="screen -ls "

for HOSTNAME in ${HOSTNAMES} ; do
  echo ${HOSTNAME}
  ssh -l ${USERNAME} ${HOSTNAME} "${SCRIPT_1}"
  ssh -l ${USERNAME} ${HOSTNAME} "${SCRIPT_2}"
done