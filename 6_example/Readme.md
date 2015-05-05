# Create the VMs

    [hostOS]$ vagrant up
    
# Log onto the client VM and start the test

    [hostOS]$ vagrant ssh client
    [clientOS]$ /vagrant/client/ping.sh
    
You will start to see responses from the different servers:

    pong 192.168.50.61
    pong 192.168.50.62
    pong 192.168.50.63
    pong 192.168.50.61
    pong 192.168.50.62
    pong 192.168.50.63
    
# Play Around

    # Bringing different service machines up and down and see how the proxy responds
    # Hint: 
    #  vagrant up
    #  vagrant halt