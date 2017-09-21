@@site::maintenance_script {"/usr/local/bin/maint-${::fqdn}":
  address => hiera('site::net::nat_ip'),
  port    => hiera('site::net::nat_port'),
}

