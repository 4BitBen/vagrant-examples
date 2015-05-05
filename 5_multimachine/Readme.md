# Key Concepts

## [Multi-Machine](http://docs.vagrantup.com/v2/multi-machine/index.html)
* Control multiple machines with a single Vagrantfile
* Each machine define is its own configuration
* Vagrant will merge machine configuration with top level configuration
** Vagrant enforces ordering outside in

# Create the VMs

    [hostOS]$ vagrant up
    
# Vagrant Commands

Same as before, just specify machine

    [hostOS]$ vagrant ssh client
    [hostOS]$ vagrant halt server
    
# Play Around

    # Bringing different machines up and down 
    