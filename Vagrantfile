# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "foodily-python-berkshelf"

  config.vm.box = "opscode-ubuntu-12.04_chef-11.4.4"

  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.4.4.box"

  config.vm.network :private_network, ip: "33.33.33.10"

  config.vm.network :public_network

  # config.vm.synced_folder "../data", "/vagrant_data"

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      :mysql => {
        :server_root_password => 'rootpass',
        :server_debian_password => 'debpass',
        :server_repl_password => 'replpass'
      }
    }

    chef.run_list = [
        "recipe[foodily_python::default]"
    ]
  end
end
