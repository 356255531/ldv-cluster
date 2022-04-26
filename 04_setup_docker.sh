#!/bin/bash

USERNAME=ga63vuf
HOSTNAMES="
hpc01.clients.eikon.tum.de
hpc02.clients.eikon.tum.de
hpc03.clients.eikon.tum.de
hpc05.clients.eikon.tum.de
fred01.clients.eikon.tum.de
fred02.clients.eikon.tum.de
tatavarty.clients.ldv.ei.tum.de
jo.clients.ldv.ei.tum.de
oelbaum.clients.ldv.ei.tum.de
"

# hpc07.clients.eikon.tum.de
# hpc10.clients.eikon.tum.de
# meyer.clients.ldv.ei.tum.de
# yelva.clients.ldv.ei.tum.de
# currently not reachable

# hpc06.clients.eikon.tum.de
# hpc08.clients.eikon.tum.de
# hpc09.clients.eikon.tum.de
# hpc10.clients.eikon.tum.de
# hpc11.clients.eikon.tum.de
# hpc12.clients.eikon.tum.de
# hpc13.clients.eikon.tum.de
# hpc14.clients.eikon.tum.de
# hpc15.clients.eikon.tum.de
# slu01.clients.eikon.tum.de
# slu02.clients.eikon.tum.de
# slu03.clients.eikon.tum.de
# fred03.clients.eikon.tum.de
# thabigt.clients.ldv.ei.tum.de
# Not with a available GPU

SCRIPT="
screen -d -S create_docker -m
docker run -d --gpus all -it --shm-size=128G -p 52022:22 -p 52066:6006  -p 5205:5000 --name ga63vuf \
-v /nas/netstore/ldv/ga63vuf/Datasets:/root/WorkSpace -v /nas/netstore/ldv/ga63vuf/Datasets:/root/Datasets \
356255531/cuda-ssh-torch:cu114-py38-torch11
"

for HOSTNAME in ${HOSTNAMES} ; do
  echo ${HOSTNAME}
  ssh -l ${USERNAME} ${HOSTNAME} "${SCRIPT}"
  screen -ls
done