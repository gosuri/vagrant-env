source 'https://rubygems.org'

# Specify your gem's dependencies in vagrant-env.gemspec
gemspec

group :development do
  gem "vagrant", git: "https://github.com/mitchellh/vagrant.git"
  gem 'rake', '~> 10.0'
end

group :plugins do
  gem "vagrant-env", path: "."
end
