# Vagrant ENV Plugin

This is a [Vagrant](http://www.vagrantup.com) plugin to load environment variables from .env into ENV. More information on why and how we use this plugin is detailed in this [post](http://www.gregosuri.com/2014/08/31/introducing-vagrant-env-plugin/)

## Requirements

* Vagrant 1.7.4 or higher

## Installation

Install the lastest version using standard vagrant plugin installation method:

```sh
$ vagrant plugin install vagrant-env
```

To install an older version of the plugin use `vagrant plugin install vagrant-env --plugin-version VERSION`

## Usage

After installing, add your application configuration to your .env file in the root of your project

```sh
$ echo BOX_NAME=hashicorp/precise64 > .env
```

Create a a Vagrantfile that looks like the following, ensure to add `config.env.enable` and fill in your information where necessary. Check out [example](example/) for reference

```ruby
Vagrant.configure("2") do |config|
  config.env.enable # enable the plugin
  config.vm.box = ENV['BOX_NAME']
end
```

Additionally, You may also add export in front of each line so you can source the file in bash:

```sh
export AWS_ACCESS_ID=YOURACCESSIDGOESHERE
export AWS_SECRET_ACCESS_ID=YOURSECRETKEYGOESHERE
```

### Should I commit my .env file?

It is recommended that you store development-only settings in your .env file, and commit it to your repository. Make sure that all your credentials for your development environment are different from your other deployments. This makes it easy for other developers to get started on your project, without compromising your credentials for other environments.

## Contributing

1. Fork it ( https://github.com/gosuri/vagrant-env/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
