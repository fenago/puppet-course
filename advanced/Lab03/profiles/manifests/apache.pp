class profiles::apache {
  $apache = $::osfamily ? { 
    'RedHat' => 'apache2',
    'Debian' => 'apache2',
    }
  service { "$apache":
    enable => true,
    ensure => true,
  }
  package { "$apache":
    ensure => 'installed',
  }
}
