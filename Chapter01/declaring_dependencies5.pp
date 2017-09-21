file { '/etc/apache2/apache2.conf':
  ensure => file,
}
file { '/etc/apache2/httpd.conf':
  ensure => file,
}
service { 'apache2':
  ensure  => running,
  enable  => true,
  require => [
    File['/etc/apache2/apache2.conf'],
    File['/etc/apache2/httpd.conf'],
  ],
}

