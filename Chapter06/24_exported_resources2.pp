@@sshkey { $::facts['networking']['fqdn']:
  host_aliases => $::facts['networking']['hostname'],
  key          => $::facts['sshecdsakey'],
  tag          => 'san-nyc'
}


