package { 'haproxy':
  ensure => 'installed',
}
->
file { '/etc/haproxy/haproxy.cfg':
  ensure => file,
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
  source => 'puppet:///modules/haproxy/etc/haproxy/haproxy.cfg',
}
->  
service {'haproxy':
  ensure =>  'running',
}

