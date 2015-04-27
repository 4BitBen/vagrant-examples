# Key Concepts

## [Vagrantfile](http://docs.vagrantup.com/v2/vagrantfile/index.html)
* Main configuration item defining how to create the Virtual Machine - e.g. network settings, # of CPUs, Memory, etc.

        NOTE: This file is typically checked into version control

## [Box](http://docs.vagrantup.com/v2/boxes.html)
* A base image. Vagrant essentially uses the base image to quickly clone a virtual machine.

## [Vagrant Cloud](https://vagrantcloud.com)
* Default place where Vagrant looks for boxes.
* Allows for one box name support multiple providers. 

## [Command Line Interface](http://docs.vagrantup.com/v2/cli/index.html)
* Vagrant's command line interface (CLI). Essentially all interaction occurs through the vagrant CLI.

# Create the VM

    [hostOS]$ vagrant up
    
# Log onto the VM

    [hostOS]$ vagrant ssh
    
# Play Around

    # Look at the default network settings
    [guestOS]$ ifconfig
    # Look at the contents of /vagrant
    [guestOS]$ ls /vagrant
    # Get Familiar with vagrant defaults
    
    # 1. vagrant user's password is vagrant
    [guestOS]$ su - vagrant
    # 2. root password is vagrant
    [guestOS]$ su -
    # 3. vagrant has password-less sudo
    [guestOS]$ sudo whoami