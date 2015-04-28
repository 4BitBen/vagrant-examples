# Key Concepts

## [Multi-Machine](http://docs.vagrantup.com/v2/multi-machine/index.html)
* Control multiple machines with a single Vagrantfile
* Each machine define is its own configuration
* Vagrant will merge machine configuration with top level configuration

# Create the VMs

    [hostOS]$ vagrant up
    
# Log onto the db VM

    [hostOS]$ vagrant ssh db 
    
# Log onto the web VM

    [hostOS]$ vagrant ssh web
    
# Play Around

    # Try to add another top-level provisioner after the machine definitions. In what order will the provisioners run?