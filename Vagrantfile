# -*- mode: ruby -*-
# vi: set ft=ruby :

  Vagrant.configure("2") do |config|
 
  config.vm.box = "bento/centos-7.4"

  config.vm.provider "virtualbox" do |vb|
      vb.name = "hybris-vagrant-vm"
      vb.memory = "4096" 
      vb.cpus = 3
  end 

  ##config.vm.network :private_network, ip: '192.168.9.99'  
  #Open Hybris's default ports 9001 and 9002
  config.vm.network "forwarded_port", guest: 9001, host: 9001, host_ip: "localhost"
  config.vm.network "forwarded_port", guest: 9002, host: 9002, host_ip: "localhost" 
  
  config.ssh.forward_agent = true

  #set up the synch folder between the host and the guest
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"

  #The primary shell script that installs SAP Hybris and its dependencies
  config.vm.provision "shell", path: "bootstrap.sh", privileged: true 

  #Install the b2b or b2c recipes that we want to use
  config.vm.provision "shell", path: "configure.sh", privileged: false

  #A script that just starts Hybris
  config.vm.provision "shell", run: "always", path: "startup.sh", privileged: false

  config.vm.post_up_message = "
              
              ###############################
              #      Congratulations!       #
              #      Hybris has been        #
              #   successfully installed    #
              ###############################                           
                    HybrisArchitect.com                   
  "

end
