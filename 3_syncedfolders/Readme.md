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
    # Go into the /vagrant-* folders on the guest OS and try creating a file. See if it appears in the host OS as well as in any of the other synced folders.
