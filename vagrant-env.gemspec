# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-env/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-env"
  spec.version       = VagrantPlugins::Env::VERSION
  spec.authors       = ["Greg Osuri"]
  spec.email         = ["greg@overclock.io"]
  spec.summary       = %q{Vagrant plugin to load environment variables from .env into ENV}
  spec.description   = %q{Vagrant plugin to load environment variables from .env into ENV}
  spec.homepage      = "http://github.com/gosuri/vagrant-env"
  spec.license       = "MIT"
  spec.files         = %w(README.md LICENSE.txt
                      vagrant-env.gemspec
                      lib/vagrant-env.rb
                      lib/vagrant-env/version.rb
                      lib/vagrant-env/config.rb
                      lib/vagrant-env/plugin.rb)
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency     "dotenv", "~> 0.9"
  spec.add_development_dependency "bundler", "~> 1.6"
end
