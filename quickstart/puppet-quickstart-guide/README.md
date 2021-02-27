Basic instructions to run the examples in the course:


Check that Puppet is installed and working:

    puppet --version


Try the 'Hello, world' example:

    puppet apply /examples/file_hello.pp
    Notice: Compiled catalog for localhost in environment production in 0.07 seconds
    Notice: /Stage[main]/Main/File[/tmp/hello.txt]/ensure: defined content as '{md5}22c3683b094136c3398391ae71b20f04'
    Notice: Applied catalog in 0.01 seconds

    cat /tmp/hello.txt
    hello, world
