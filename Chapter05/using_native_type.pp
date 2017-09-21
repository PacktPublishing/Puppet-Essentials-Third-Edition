cacti_device { 'eth0':
  ensure      => present,
  ip          => $::ipaddress,
  ping_method => 'icmp',
}

