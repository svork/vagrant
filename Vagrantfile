# Minimal Vagrant version: 2.2.4
Vagrant.require_version ">=2.2.4"

# Box definition
Vagrant.configure("2") do |config|
  config.vm.define "elasticVM"
  config.vm.box = "ubuntu/trusty64"

  # VM resources
  config.vm.provider :virtualbox do |vbox|
    vbox.name = "elasticVM"
    vbox.cpus = 2
    vbox.memory= 4096 
  end

  # Networking
  config.vm.network :private_network, ip: "192.168.56.4"
  config.vm.hostname = "elasticVM"

  # Ansible playbook details
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/site.yml"   
    ansible.inventory_path = "provisioning/hosts"
  end
end
