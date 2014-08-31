# Vagrant ENV Plugin

This is a [Vagrant](http://www.vagrantup.com) plugin to load environment variables from .env into ENV 

## Usage

Install using standard Vagrant plugin installation methods. 

```
$ vagrant plugin install vagrant-env
```

After installing, add your application configuration to your .env file in the root of your project

```
$ echo BOX_NAME=foo > .env
```

And then make a Vagrantfile that looks like the following, filling in your information where necessary.

```
Vagrant.configure("2") do |config|
  congig.env.enable
  config.vm.box = ENV['BOX_NAME']
end
```

You may also add export in front of each line so you can source the file in bash:

```
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
