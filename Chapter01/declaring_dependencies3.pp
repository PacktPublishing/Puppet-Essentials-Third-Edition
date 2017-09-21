package { 'haproxy':
  ensure => 'installed',
  before => File['/etc/haproxy/haproxy.cfg'],
}
file { '/etc/haproxy/haproxy.cfg':
  ensure => file,
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
  source => 'puppet:///modules/haproxy/etc/haproxy/haproxy.cfg',
  before => Service['haproxy'],
}
service { 'haproxy':
  ensure => 'running',
}

