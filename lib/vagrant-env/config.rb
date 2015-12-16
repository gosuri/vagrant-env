require 'dotenv'

module VagrantPlugins
  module Env
    class Config < Vagrant.plugin("2", :config)

      # Simple interface:
      # config.env.enable __FILE__
      def enable(vagrantfile = nil)
        if vagrantfile
          load File.join File.dirname(vagrantfile), '.env'
        else
          # The default is .env in the current directory - but that may not be
          # the same directory that the Vagrantfile is in
          # https://github.com/gosuri/vagrant-env/issues/2
          load
        end
      end

      # Lower-level methods - proxy to Dotenv:
      def load(*filenames)
        Dotenv::load *filenames
      end

      def load!(*filenames)
        Dotenv::load! *filenames
      end

      def overload(*filenames)
        Dotenv::overload *filenames
      end

    end
  end
end
