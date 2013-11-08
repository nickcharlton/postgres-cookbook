# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = 'postgres-berkshelf'
  config.vm.box = 'boxes-precise64-chef'
  config.vm.box_url = 'http://boxes.nickcharlton.net/precise64-chef-virtualbox.box'

  # enable Berkshelf
  config.berkshelf.enabled = true

  # provison using Chef Solo
  # note: this is mostly the default
  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      'recipe[postgres::server]'
    ]
  end
end
