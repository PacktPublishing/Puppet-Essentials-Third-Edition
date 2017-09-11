package { 'haproxy':
  ensure => 'installed',
}
file {'/etc/haproxy/haproxy.cfg':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  source  => 'puppet:///modules/haproxy/etc/haproxy/haproxy.cfg',
  require => Package['haproxy'],
}
service {'haproxy':
  ensure  => 'running',
  require => File['/etc/haproxy/haproxy.cfg'],
}

