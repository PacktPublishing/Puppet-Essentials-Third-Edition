file { '/etc/apache2/conf.d/passwords.conf':
  source  => '...',
  require => Class['apache'],
  notify  => Class['apache'],
}

