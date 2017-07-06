#!/bin/sh

# ENABLE SSH

# Turn on remote login
/usr/sbin/systemsetup -setremotelogin on

# Create the com.apple.access_ssh group
/usr/sbin/dseditgroup -o create -q com.apple.access_ssh

# Add the admin group to com.apple.access_ssh
/usr/sbin/dseditgroup -o edit -a admin -t group com.apple.access_ssh

# ENABLE ARD

/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -on -users admin -privs -DeleteFiles -ControlObserve -TextMessages -OpenQuitApps -GenerateReports -RestartShutDown -SendFiles -ChangeSettings -restart -agent

exit 0