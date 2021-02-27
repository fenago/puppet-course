docker::run { 'hello':
  image          => 'fenago/hello',
  command        => '/bin/sh -c "while true; do echo Hello, world; sleep 1; done"',
  manage_service => false,
}
