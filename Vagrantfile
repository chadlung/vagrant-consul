Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision :shell, path: "install_consul.sh"

  config.vm.define "consul-node1" do |n1|
      n1.vm.hostname = "consul-node1"
      n1.vm.network "private_network", ip: "192.168.33.10"
  end

  config.vm.define "consul-node2" do |n2|
      n2.vm.hostname = "consul-node2"
      n2.vm.network "private_network", ip: "192.168.33.11"
  end
end
