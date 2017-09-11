$nat_port = hiera('site::net::nat_port')
@@firewall { "650 forward port ${nat_port} to ${::fqdn}":
  proto       => 'tcp',
  dport       => $nat_port,
  destination => hiera('site::net::nat_ip'),
  jump        => 'DNAT',
  todest      => $::ipaddress,
  tag         => hiera('site::net::firewall_segment'),
}

