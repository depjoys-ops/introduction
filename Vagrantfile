
Vagrant.configure("2") do |config|

  config.vm.define "dev" do |dev|

    #dev.vm.box = "gusztavvargadr/ubuntu-server-2204-lts"
    dev.vm.box = "ubuntu/jammy64"   

    #dev.vm.network "private_network", ip: "192.168.100.100", netmask: "255.255.255.0"
    #dev.vm.network "private_network", type: "dchp", virtualbox__inet: "vboxnet0", auto_config: true
    #dev.vm.network "private_network", ip: "192.168.100.100", virtualbox__inet: "vboxnet1", auto_config: true
    #dev.vm.network "private_network", ip: "192.168.100.100"

    dev.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
      vb.cpus = 2
    end

    # Define a trigger to run a remote script after the virtual machine is up and provisioned
    dev.trigger.after :up, :provision do |trigger|
       trigger.run_remote = {inline: "sudo chmod +x /vagrant/script.sh && /vagrant/script.sh"}
    end
  end

end
