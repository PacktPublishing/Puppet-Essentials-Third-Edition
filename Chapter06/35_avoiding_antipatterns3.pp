class cacti {
  if !defined(Package['apache2']) {
    package { 'apache2': ensure => 'present' }
  }
}
class postfixadmin {
  if !defined(Package['apache2']) {
    package { 'apache2': ensure => 'latest' }
  }
}

