# Minimal Vagrant version: 2.2.4
Vagrant.require_version ">=2.2.4"

# Virtual machine name
VM_NAME = "elasticVM"

# Virtual machine private IP address
VM_PRIVATE_IP = "192.168.56.4"

# Box definition
Vagrant.configure("2") do |config|
  config.vm.define VM_NAME
  config.vm.box = "debian/stretch64"

  # VM resources
  config.vm.provider :virtualbox do |vbox|
    vbox.name = VM_NAME
    vbox.cpus = 2
    vbox.memory= 4096 
  end

  # Networking
  config.vm.network :private_network, ip: VM_PRIVATE_IP
  config.vm.hostname = VM_NAME

  # Ansible playbook details
  config.vm.provision "ansible" do |ansible|
    ansible.compatibility_mode = "2.0"
    ansible.playbook = "provisioning/site.yml"   
    ansible.inventory_path = "provisioning/hosts"
  end
end
