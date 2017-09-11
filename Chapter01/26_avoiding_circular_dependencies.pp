file { '/etc/haproxy':
  ensure => 'directory',
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
}
file { '/etc/haproxy/haproxy.cfg':
  ensure => file,
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
  source => 'puppet:///modules/haproxy/etc/haproxy/haproxy.cfg',
}
service { 'haproxy':
  ensure  => 'running',
  require => File['/etc/haproxy/haproxy.cfg'],
  before  => File['/etc/haproxy'],
}

