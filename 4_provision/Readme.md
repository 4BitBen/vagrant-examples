# Key Concepts

## [Provisioners](https://docs.vagrantup.com/v2/provisioning/index.html)
* Automatically setup the machine - install software, alter configurations, etc.
* Multiple provisioners, executed in order of definition
* Provisioners
    * Shell Script
    * Ansible
    * Chef
    * Puppet
    * Salt

# Create the VM

    [hostOS]$ vagrant up

NOTE: Watch the output. Notice that the script is being run.

Bring up your browser and go to [http://192.168.50.4](http://192.168.50.4)
    
# Log onto the VM

    [hostOS]$ vagrant ssh
    
