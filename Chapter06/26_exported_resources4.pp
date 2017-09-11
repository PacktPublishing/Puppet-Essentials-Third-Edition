class site::ssh {
  # ...actual SSH management...
  @@nagios_service { "${::facts['networking']['fqdn']}-ssh":
    use       => 'ssh_template',
    host_name => $::facts['networking']['fqdn'],
  }
}

