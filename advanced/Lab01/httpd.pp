service {'apache2':
  ensure  => 'running',
  require => Package['apache2'],
}

package {'apache2':
  ensure => 'installed',
}

$fenago = @(FENAGO)
  <VirtualHost *:80>
    Servername fenago
    DocumentRoot /var/www/fenago
  </VirtualHost>
  | FENAGO
file {'/etc/apache2/conf.d/fenago.conf':
  content => $fenago,
  require => Package['apache2'],
  notify  => Service['apache2'],
}

$index = @(INDEX)
  <html>
    <body>
      <h1>Hello World!</h1>
    </body>
  </html>
  | INDEX

file {'/var/www/fenago':
  ensure  => directory,
  require => Package['apache2'],
}
file {'/var/www/fenago/index.html':
  content => $index,
  require => File['/var/www/fenago'],
}
