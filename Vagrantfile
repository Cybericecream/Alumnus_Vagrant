# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/bionic64"

  #Provider Settings
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
    vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/wordpress", "1"]
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  #Network Settings
  # config.vm.box_check_update = false
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"

  #Foler Settings
  config.vm.synced_folder "wordpress", "/var/www/html", :mount_options => ["dmode=777", "fmode=666"]

  #Provision Seettings
  #config.vm.provision "shell", inline: <<-SHELL
    #apt-get update
    #apt-get install -y apache2
   #SHELL

   config.vm.provision "shell", path: "bootstrap.sh"
   config.vm.provision "shell", path: "nvm.sh", privileged: false
   config.vm.provision "shell", path: "project-setup.sh", privileged: false
end
