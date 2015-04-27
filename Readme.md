# Purpose
The purpose of this is to get someone new to Vagrant familiar with Vagrant concepts through a few simple examples.

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
[Simple](1_simple) - Initial VM creation

[Network](2_networking) - Setup VM Networking

//TODO:

Synced Folders

Provisioners

Multi-Machine

# Further Reading
* [Vagrant Documentation](http://docs.vagrantup.com/v2/) - Read more about Vagrant
* [Vagrant Cloud](https://vagrantcloud.com/) - Find pre-built Vagrant boxes
* [Comparing Filesystem Performance in VMs](http://mitchellh.com/comparing-filesystem-performance-in-virtual-machines) - Further look at sync folders
* [Packer](https://packer.io/) - Build Vagrant Boxes from ISO