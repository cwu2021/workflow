#!/bin/bash

# put all stuffs into $workdir.
cd $workdir

# fireup everything with screen. put the lines below tp rc.local for auto startup.
# rc-local requires /etc/rc.d/rc.local with correct SElinux permission.
# restorecon -v
screen -d -m -S relay ./workflow1.sh
sleep 15
screen -d -m -S twitch ./workflow2.sh
sleep 5
screen -d -m -S watchdog ./workflow3.sh
