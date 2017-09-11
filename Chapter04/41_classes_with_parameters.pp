class apache::config(Integer $max_clients=100) {
  file { '/etc/apache2/conf.d/max_clients.conf':
    content => "MaxClients ${max_clients}\n",
  }
}

