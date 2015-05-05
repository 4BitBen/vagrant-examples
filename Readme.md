# Purpose
The purpose of this is to get someone new to Vagrant familiar with Vagrant concepts through a few simple examples.

# Vagrant Use Cases

## Developer sandbox
Allow a developer to install new software and play around without impacting their dev environment.

## Network sandbox
Create multiple machines and have them talk to each other, sever network connections, bring machines up/down.

# Pre-Requisite
1. Download/Install [Vagrant](http://www.vagrantup.com/downloads.html)
2. Download/Install a VM Provider - e.g. [Virtualbox](https://www.virtualbox.org/wiki/Downloads) for Windows or [Parallels](http://www.parallels.com/products/desktop/download/) for Mac
    
    a. **(Parallels-Only)** Install the parallels plugin
       
        $ vagrant plugin install vagrant-parallels   
    b. **(Parallels-Only)** Setting parallels as the default provider
    
        $ export VAGRANT_DEFAULT_PROVIDER=parallels
        
    Or add it to your ~/.bashrc
    
3. (Optional) Add the main box we will be using. This will speed up creating the initial VM.

        $ vagrant box add boxcutter/centos71
        NOTE: This will prompt you for the VM provider you are using. Enter the number based off what you installed in step #2 above.
        
        1) parallels
        2) virtualbox
        3) vmware_desktop
        
        Enter your choice: 
        
4. Clone this repo

        $ git clone <url>
        
# Examples
1. Simple - Initial VM creation, lifecycle of a VM
2. Networking - Configure VM Network Adapters
3. Synced Folders - Sync a folder from the Host machine to the Guest VM
4. Provisioners - Provision a VM using a combination of shell scripts, ansible, puppet, chef, or salt
5. Multi-Machine - Control multiple machines with a single Vagrantfile
6. Example - Example that creates a client machine, a load balancing web server machine, and three machines with the same service

# Further Reading
* [Vagrant Documentation](http://docs.vagrantup.com/v2/) - Read more about Vagrant
* [Vagrant Cloud](https://vagrantcloud.com/) - Find pre-built Vagrant boxes
* [Comparing Filesystem Performance in VMs](http://mitchellh.com/comparing-filesystem-performance-in-virtual-machines) - Further look at sync folders
* [Packer](https://packer.io/) - Build Vagrant Boxes from ISO
* [IBM Research: Comparison of VM and LXC](http://domino.research.ibm.com/library/cyberdig.nsf/papers/0929052195DD819C85257D2300681E7B/$File/rc25482.pdf) - Comparison of Virtual Machines and Linux Containers
* [Wild West of Unix I/O](https://www.youtube.com/watch?v=Ss4pUbq09Lw) (video) - Talk from FOSDEM on how VMs affect CPU and I/O