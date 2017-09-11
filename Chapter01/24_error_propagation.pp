file { '/etc/haproxy/haproxy.cfg':
  ensure => file,
  source => 'puppet:///modules/haproxy/etc/haproxy.cfg',
}

