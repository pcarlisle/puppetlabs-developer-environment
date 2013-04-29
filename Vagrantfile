Vagrant::Config.run do |top_config|
  top_config.vm.define :debian6 do |config|
    config.vm.box = "debian-607"
    config.vm.box.url = "http://puppet-vagrant-boxes.puppetlabs.com/debian-607-x64-vbox4210.box"
    config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "manifests"
      puppet.manifest_file = "default.pp"
      puppet.module_path = "modules"
    end
  end
end
