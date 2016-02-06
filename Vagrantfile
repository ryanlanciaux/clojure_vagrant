Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.synced_folder "./src", "/home/vagrant/src"
  config.vm.provision :shell, :path => "clojure.sh"
end
