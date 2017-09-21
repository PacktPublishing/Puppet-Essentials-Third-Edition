node "agent" {
  include cacti
  cacti_device { "Puppet test agent (Debian 7)":
    ensure => present,
    ip     => $::ipaddress,
  }
}

