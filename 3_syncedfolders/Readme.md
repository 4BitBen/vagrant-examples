# Key Concepts

## [Synced Folders](http://docs.vagrantup.com/v2/synced-folders/)
* By default, current working directory is synced with /vagrant
* Other synchronization options - NFS, RSync, and SMB (windows host only)
** Other options typically require 3rd party software installed

# Create the VM

    [hostOS]$ vagrant up
    
# Log onto the VM

    [hostOS]$ vagrant ssh
    
# Play Around

    # Look at the new vagrant folder
    [guestOS]$ ls /vagrant-examples-default
    # Try to configure Vagrant to use the other sync options
