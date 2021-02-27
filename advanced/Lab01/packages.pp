
$apache = $::osfamily ? {
  'Debian' => 'apache2',
  'RedHat' => 'apache2'
} 
$packages = ['mod_ssl','mod_python'] << $apache
package {$packages: ensure => installed}
