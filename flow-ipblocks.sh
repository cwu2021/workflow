#!/bin/bash
# flow-tools required to install.
year=2021
month=12
day=05
workdir=/data/flows/$year/$year-$month/$year-$month-$day
cd $workdir
# (Dec 5, 2021) destination ip sort to /16, as rough comparison to zone file.
flow-cat ft* | flow-print -n | awk '{print $2}'| grep -v unwanted.ipblock | cut -d '.' -f1,2 | sort -u
