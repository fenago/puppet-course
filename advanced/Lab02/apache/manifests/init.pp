class apache {
  File {
    owner => 'apache',
    group => 'apache',
    mode  => 0644,
  }
  package {'apache2': ensure => 'installed' }

  $index = @(INDEX)
    <html>
      <body>
        <h1><a href='fenago.html'>Fenago! </a></h1>
      </body>
    </html>
    | INDEX
  file {'/var/www/html/index.html':
    content => $index,
  }

  $fenago = @(FENAGO)
    <html>
      <body>
        <h2>PacktPub</h2>
      </body>
    </html>
    | FENAGO
  file {'/var/www/html/fenago.html':
    content => $fenago
  }
}
