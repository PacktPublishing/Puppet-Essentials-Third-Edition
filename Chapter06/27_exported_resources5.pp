@@firewall { "150 forward port 443 to ${::facts['networking']['hostname']}":
  proto       => 'tcp',
  dport       => '443',
  destination => $public_ip_address,
  jump        => 'DNAT',
  todest      => $::facts['networking']['ipaddress'],
  tag         => 'segment03',
}

