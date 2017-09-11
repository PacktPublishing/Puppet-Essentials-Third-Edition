@@host { $::facts['networking']['fqdn']:
  ip           => $::facts['networking']['ipaddress'],
  host_aliases => [ $::facts['networking']['hostname'] ],
  tag          => 'nyc-site',
}

