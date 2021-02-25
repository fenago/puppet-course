service {'apache2':
  ensure  => 'running',
  require => Package['apache2'],
}

package {'apache2':
  ensure => 'installed',
}

$cookbook = @(COOKBOOK)
  <VirtualHost *:80>
    Servername cookbook
    DocumentRoot /var/www/cookbook
  </VirtualHost>
  | COOKBOOK
file {'/etc/apache2/conf.d/cookbook.conf':
  content => $cookbook,
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

file {'/var/www/cookbook':
  ensure  => directory,
  require => Package['apache2'],
}
file {'/var/www/cookbook/index.html':
  content => $index,
  require => File['/var/www/cookbook'],
}
