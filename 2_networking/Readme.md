# Key Concepts

## [Networking](http://docs.vagrantup.com/v2/networking/index.html)
* Configure the IP of the VM
* Configure the Network Adapters of the VM - NAT, Host-Only, Bridged, Port Forwarding

# Create the VM

    [hostOS]$ vagrant up
    
# Log onto the VM

    [hostOS]$ vagrant ssh
    
# Play Around

    # Look at the network settings (compare to networks settings in 1_simple)
    [guestOS]$ ifconfig
    # Look at the hostname
    [guestOS]$ hostname
