file { '/etc/sysctl.conf':
  ensure => file,
  tag    => 'security',
}

