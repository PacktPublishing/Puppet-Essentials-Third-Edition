file { '/etc/ntp.conf':
  source => 'puppet:///modules/ntp/ntp.conf',
}

