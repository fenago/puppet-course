$dependencies = [
  'php-cgi',
  'php-cli',
  'php-common',
  'php-gd',
  'php-json',
  'php-mcrypt',
  'php-mysql',
  'php-soap',
]

package { $dependencies:
  ensure => installed,
}
