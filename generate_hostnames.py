import paramiko
from base64 import decodebytes


tum_id = 'ga63vuf'
password = 'Hafuv36ag@'
hosts = set()

for i in range(1, 10):
    hosts.add('hpc0{}.clients.eikon.tum.de'.format(i))
for i in range(10, 16):
    hosts.add('hpc{}.clients.eikon.tum.de'.format(i))

alias = [
    'slu01', 'slu02', 'slu03'
]
for i in alias:
    hosts.add('{}.clients.eikon.tum.de'.format(i))

alias = [
    'fred01', 'fred02', 'fred03'
]
for i in alias:
    hosts.add('{}.clients.eikon.tum.de'.format(i))

alias = [
    'tatavarty',
    'yelva',
    'jo',
    'oelbaum',
    'thabigt',
    'meyer'
]
for i in alias:
    hosts.add('{}.clients.ldv.ei.tum.de'.format(i))

print(hosts)