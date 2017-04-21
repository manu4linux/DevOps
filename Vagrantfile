# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.require_version ">= 1.9.0"

Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "bento/centos-7.3"
  config.vm.box_version = "2.3.4"
  config.vm.provider "parallels"
  config.vm.provider "parallels" do |v|
    v.update_guest_tools = true
    v.memory = 4096;
    v.cpus = 2
  end

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL

$script_ydt = <<SCRIPT
set -e 
set -x
echo "hello"
uname -a
sudo yum install -y yum-utils
sudo yum install -y deltarpm
sudo yum -y update
sudo yum install -y screen
sudo yum install -y tree
sudo yum install -y git
sudo yum install -y man
sudo yum install -y java
sudo yum groupinstall -y "Development Tools"
sleep 2
sudo yum -y update
exit
SCRIPT


$script_idok = <<SCRIPT
set -e 
set -x
echo "hello"
uname -a
sudo yum install -y selinux-policy
echo "hello"
sudo yum install -y yum-utils
sleep 1
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum repolist all
sudo yum clean all
sudo yum install -y docker-ce
sleep 2
exit
SCRIPT


$script_sdok = <<SCRIPT
set -e
set -x
echo "hello2"
uname -a
sudo systemctl start docker
sleep 2
sudo docker run hello-world
sudo groupadd docker || echo "groupadd fail" ;
sudo usermod -aG docker $USER || echo "usermod fail" ;
sudo usermod -aG docker vagrant || echo "usermod fail" ;
docker run hello-world || echo "docker run fail" ;
sudo systemctl enable docker || echo "systemctl fail" ;
sleep 2
exit
SCRIPT


$script_pris = <<SCRIPT
set -e
set -x
echo "hello; nothing to do in pre install"
uname -a
exit
SCRIPT


$script_pois = <<SCRIPT
set -e
set -x
echo "hello"
uname -a
##sudo ptiagent-cmd --install ##commented out##
ln -s /devops  /home/vagrant/START_HERE || echo "ln link fail" ;
exit
SCRIPT


$script_always_run = <<SCRIPT
set -e
set -x
echo "hello; nothing to do in always run after post install"
uname -a
exit
SCRIPT


  ####################################################################################
  config.vm.provision "run_pre_install_steps", type: "shell", inline: $script_pris
  ####################################################################################
  config.vm.provision "run_install_dev_tools", type: "shell", inline: $script_ydt
  config.vm.provision "install_docker_ce_tools", type: "shell", inline: $script_idok
  config.vm.provision "start_docker_ce", type: "shell", inline: $script_sdok
  ####################################################################################
  config.vm.provision "run_post_install_steps", type: "shell", inline: $script_pois
  ####################################################################################

  ####################################################################################
  config.vm.provision "always_run", type: "shell", run: "always", inline: $script_always_run

  config.vm.synced_folder "./","/devops"


end
