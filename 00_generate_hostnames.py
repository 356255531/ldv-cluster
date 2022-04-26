import paramiko
from base64 import decodebytes


tum_id = 'ga63vuf'
password = 'Hafuv36ag@'
host_dict = {}

for i in range(1, 10):
    host_dict['eikon-hpc0{}'.format(i)] = 'hpc0{}.clients.eikon.tum.de'.format(i)
for i in range(10, 16):
    host_dict['eikon-hpc{}'.format(i)] = 'hpc{}.clients.eikon.tum.de'.format(i)

alias = [
    'slu01', 'slu02', 'slu03'
]
for i in alias:
    host_dict['eikon-' + i] = '{}.clients.eikon.tum.de'.format(i)

alias = [
    'fred01', 'fred02', 'fred03'
]
for i in alias:
    host_dict['eikon-' + i] = '{}.clients.eikon.tum.de'.format(i)

alias = [
    'tatavarty',
    'yelva',
    'jo',
    'oelbaum',
    'thabigt',
    'meyer'
]
for i in alias:
    host_dict['ldv-' + i] = '{}.clients.ldv.ei.tum.de'.format(i)

hosts = ''
for v in host_dict.values():
    print(v)

for v in host_dict.items():
    print(v)