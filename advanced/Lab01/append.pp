$apache = $::osfamily ? {
  'Debian' => 'apache2',
  'RedHat' => 'apache2'
}
$packages = ['memcached'] << $apache
package {$packages: ensure => installed}
