begin
  require "vagrant"
rescue LoadError
  raise "The Vagrant ENV plugin must be run within Vagrant."
end

# This is a sanity check to make sure no one is attempting to install
# this into an early Vagrant version.
if Vagrant::VERSION < "1.2.0"
  raise "The Vagrant ENV plugin is only compatible with Vagrant 1.2+"
end

module VagrantPlugins
  module Env
    class Plugin < Vagrant.plugin("2")
      name "ENV"
      description <<-DESC
        Vagrant plugin to load environment variables from .env into ENV
      DESC

      config "env" do
        require_relative "config"
        Config
      end
    end
  end
end
