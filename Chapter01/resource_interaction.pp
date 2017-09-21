file { '/etc/haproxy/haproxy.cfg':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  source  => 'puppet:///modules/haproxy/etc/haproxy/haproxy.cfg',
  require => Package['haproxy'],
}
service { 'haproxy':
  ensure    => 'running',
  subscribe => File['/etc/haproxy/haproxy.cfg'],
}

