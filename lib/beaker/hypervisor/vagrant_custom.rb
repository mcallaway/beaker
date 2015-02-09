require 'beaker/hypervisor/vagrant'

class Beaker::VagrantCustom < Beaker::Vagrant
  def provision(provider = 'vagrant_custom')
    super
  end

  def make_vfile hosts, options = {}
    FileUtils.cp(@options[:vagrantfile], @vagrant_file)
  end
end
