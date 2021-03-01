include apache

apache::vhost { '*':
  port          => '81',
  docroot       => '/var/www/cat-pictures',
  docroot_owner => 'www-data',
  docroot_group => 'www-data',
}

file { '/var/www/cat-pictures/index.html':
  content => "<img src='https://raw.githubusercontent.com/fenago/puppet-course/master/quickstart/md/images/8880_07_02.jpg'>",
  owner   => 'www-data',
  group   => 'www-data',
}
