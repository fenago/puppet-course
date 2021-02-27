Basic instructions to run the examples in the book:


Download and install Virtualbox (https://www.virtualbox.org/).

Download and install Vagrant (https://www.vagrantup.com/downloads.html).

In the puppet-beginners-guide-3 repo directory, run:

    vagrant plugin install vagrant-vbguest
    vagrant up
    ...

    Machine booted and ready!

Connect to the VM with the following command:

    vagrant ssh

You now have a command line shell on the VM. Check that Puppet is installed and working:

    puppet --version
    5.0.0

Try the 'Hello, world' example:

    puppet apply /vagrant/examples/file_hello.pp
    Notice: Compiled catalog for localhost in environment production in 0.07 seconds
    Notice: /Stage[main]/Main/File[/tmp/hello.txt]/ensure: defined content as '{md5}22c3683b094136c3398391ae71b20f04'
    Notice: Applied catalog in 0.01 seconds

    cat /tmp/hello.txt
    hello, world

Well, that was easy! Reward yourself with a big cup of tea and a slice of cake. It's important to keep your strength up.