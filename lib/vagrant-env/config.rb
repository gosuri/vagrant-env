require 'dotenv'

module VagrantPlugins
  module Env
    class Config < Vagrant.plugin("2", :config)
      attr_accessor :enable
      def initialize
        @enable = UNSET_VALUE
        Dotenv.load
      end
    end
  end
end
