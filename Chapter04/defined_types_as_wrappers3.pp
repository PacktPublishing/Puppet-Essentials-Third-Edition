file { '/etc/ntpd.conf':
  source => 'puppet:///modules/ntp/etc/ntpd.conf',
}
