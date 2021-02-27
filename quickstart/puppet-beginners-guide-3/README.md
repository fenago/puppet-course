# Puppet 5


Throughout the book, we'll be developing a complete, working example infrastructure, which you can use as a basis for your own. You can view and download it at the [Puppet 5 Beginner's Guide demo repo](https://github.com/fenago/control-repo-3).

If you're new to Puppet, a great way to try it out quickly is to use a Vagrant virtual machine, which will run on your own computer, and there's a specific [Vagrant image](https://app.vagrantup.com/ubuntu/boxes/xenial64) recommended for use with this book. Follow the instructions below to install Virtualbox and Vagrant, and you'll be able to run the examples in this repo in just a few minutes.

Download and install [Virtualbox](https://www.virtualbox.org/).

Download and install [Vagrant](https://www.vagrantup.com/downloads.html).

In the `puppet-beginners-guide-3` repo directory, run:

    scripts/start_vagrant.sh
    ...

    Machine booted and ready!

Connect to the VM with the following command:

    vagrant ssh

You now have a command line shell on the VM. Check that Puppet is installed and working:

    puppet --version
    5.2.0

Try the 'Hello, world' example:

    sudo puppet apply /examples/file_hello.pp
    Notice: Compiled catalog for localhost in environment production in 0.07 seconds
    Notice: /Stage[main]/Main/File[/tmp/hello.txt]/ensure: defined content as '{md5}22c3683b094136c3398391ae71b20f04'
    Notice: Applied catalog in 0.01 seconds

    cat /tmp/hello.txt
    hello, world

Well, that was easy! Reward yourself with a big cup of tea and a slice of cake. It's important to keep your strength up. 
