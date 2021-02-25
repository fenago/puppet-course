class wordpress {
  #  package {'apache2':
  #  ensure => 'installed',
  #}
  #service {'apache2':
  #  ensure => 'running',
  #  enable => true,
  #}
  include virtual
  realize(Package['apache2'])
  realize(Service['apache2'])
}
