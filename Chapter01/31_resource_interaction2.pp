file { '/etc/haproxy/haproxy.cfg':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  source  => 'puppet:///modules/haproxy/etc/haproxy/haproxy.cfg',
  require => Package['haproxy'],
  notify  => Service['haproxy'],
}
service { 'haproxy':
  ensure => 'running',
}

