# Key Concepts

## [Multi-Machine](http://docs.vagrantup.com/v2/multi-machine/index.html)
* Control multiple machines with a single Vagrantfile
* Each machine define is its own configuration
* Vagrant will merge machine configuration with top level configuration

# Create the VMs

    [hostOS]$ vagrant up
    
# Log onto the client VM and start the test

    [hostOS]$ vagrant ssh client
    [clientOS]$ /vagrant/client/ping.sh
    
You will start to see responses from the different servers:

    pong 192.168.50.51
    pong 192.168.50.52
    pong 192.168.50.53
    pong 192.168.50.51
    pong 192.168.50.52
    pong 192.168.50.53
    
# Play Around

    # Bringing different service machines up and down and see how the proxy responds
    # Hint: 
    #  vagrant up
    #  vagrant halt