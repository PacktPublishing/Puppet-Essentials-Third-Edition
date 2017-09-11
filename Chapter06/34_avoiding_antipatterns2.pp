if ! defined(Package['apache2']) {
  package { 'apache2':
    ensure => 'installed',
  }
}

