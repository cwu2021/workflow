#!/bin/bash
# flow-tools required to install.
year=2021
month=12
day=05
workdir=/data/flows/$year/$year-$month/$year-$month-$day
cd $workdir
# (Dec 5, 2021) destination ip sort to /16, as rough comparison to zone file.
flow-cat ft* | flow-print -n | awk '{print $2}'| grep -v unwanted.ipblock | cut -d '.' -f1,2 | sort -u
# (Dec 9, 2021) diff '<' twice to get suspicious blocks. however, /16 may be too wide.
flow-cat ft* | flow-print -n | grep '168\.95\.'
# {'country_code': 'TW', 'country_name': 'Taiwan', 'city': None, 'postal': None,
# 'latitude': 23.5, 'longitude': 121, 'IPv4': '168.95.1.1', 'state': None}
