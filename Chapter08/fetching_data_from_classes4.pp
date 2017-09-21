@@cacti_device { $::fqdn:
  ip => hiera('snmp_address', $::ipaddress),
}

