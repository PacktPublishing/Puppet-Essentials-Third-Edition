class apache {
  package { 'apache2':
    ensure => present,
  }
  file { '/etc/apache2/apache2.conf':
    ensure => 'file',
    source => 'puppet:///modules/apache/etc/apache2/apache2.conf',
  }
  service { 'apache2':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/apache2/apache2.conf'],
  }
}

