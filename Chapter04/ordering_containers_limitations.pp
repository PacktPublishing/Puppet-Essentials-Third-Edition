class apache {
  include apache::service
  include apache::package
  include apache::config
}
file { '/etc/apache2/conf.d/passwords.conf':
  source  => '...',
  require => Class['apache'],
}

