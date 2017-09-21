file { '/etc/apache2/conf.d/passwords.conf':
  source  => '...',
  require => Class['apache::package'],
  notify  => Class['apache::service'],
}

