# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet-cron':
  source => '/examples/run-puppet-cron.sh',
  mode   => '0755',
}

cron { 'run-puppet-cron':
  command => '/usr/local/bin/run-puppet-cron',
  hour    => '*',
  minute  => '*/15',
}
