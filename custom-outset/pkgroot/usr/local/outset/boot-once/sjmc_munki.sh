#!/bin/sh

HOSTNAME=`/bin/hostname | cut -f1 -d"."`

/usr/sbin/scutil --set ComputerName $HOSTNAME
/usr/sbin/scutil --set LocalHostName $HOSTNAME

echo "Setting SoftwareRepoURL to https://munki.journalism.wisc.edu"
/usr/bin/defaults write /Library/Preferences/ManagedInstalls SoftwareRepoURL 'https://munki.journalism.wisc.edu'

/usr/bin/defaults write /Library/Preferences/ManagedInstalls InstallAppleSoftwareUpdates -bool True

echo "Setting bootstrap flag."
/usr/bin/touch "/Volumes/Macintosh HD/Users/Shared/.com.googlecode.munki.checkandinstallatstartup"

exit 0
