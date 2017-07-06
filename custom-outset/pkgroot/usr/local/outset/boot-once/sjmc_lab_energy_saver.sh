#!/bin/sh

/usr/sbin/systemsetup -settimezone America/Chicago
/usr/sbin/systemsetup -setnetworktimeserver ntp1.doit.wisc.edu

/usr/bin/pmset -c displaysleep 45
/usr/bin/pmset -c disksleep 45
/usr/bin/pmset -c sleep 240
/usr/bin/pmset -c womp 1
/usr/bin/pmset -c autorestart 1

/usr/bin/pmset -b displaysleep 5
/usr/bin/pmset -b disksleep 10
/usr/bin/pmset -b sleep 10
/usr/bin/pmset -b womp 1
/usr/bin/pmset -b autorestart 0

exit 0
