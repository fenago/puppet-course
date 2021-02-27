docker::run { 'hello':
  ensure => absent,
  image  => 'fenago/hello',
}
