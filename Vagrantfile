Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"

  # enable rsync
  puts ENV["VAGRANT_DETECTED_OS"];
  ENV["VAGRANT_DETECTED_OS"] = ENV["VAGRANT_DETECTED_OS"].to_s + " cygwin"

  config.vm.provider "virtualbox" do |vb, provider, override|
    vb.memory = 2048
    vb.cpus = 4
  end

  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"

  config.vm.synced_folder ".", "/var/www/html", :mount_options => ["dmode=777", "fmode=666"]

  # install lemp
  config.vm.provision "shell", path: "scripts/install-lamp.sh"

  # install node, nvm, npm, yarn
  config.vm.provision "shell", path: "scripts/install-node.sh"

end
