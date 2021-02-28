# Set up regular Puppet runs

package { 'cron':
  ensure => installed,
}

service { 'cron':
  ensure  => running,
  enable  => true,
}

file { '/usr/local/bin/run-puppet-cron':
  source => '/examples/run-puppet-cron.sh',
  mode   => '0755',
}

cron { 'run-puppet-cron':
  command => '/usr/local/bin/run-puppet-cron',
  hour    => '*',
  minute  => '*/2',
}
