
Vagrant.configure(2) do |config| 
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "chingiz"
  config.vm.provision :shell, path: ".provision/nginx.sh"
  config.vm.network :forwarded_port, guest: 80, host: 4567, auto_correct: true
end
