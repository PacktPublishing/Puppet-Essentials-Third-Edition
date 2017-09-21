if hiera('site::net::nat_ip', false) {
  @@firewall { "200 NAT ports for ${::fqdn}":
    port        => hiera_array('site::net::nat_ports'),
    proto       => 'tcp',
    destination => hiera('site::net::nat_ip'),
    jump        => 'DNAT',
    todest      => $::ipaddress,
  }
}

