if $::os['name'] != 'Ubuntu' {
  package { 'avahi-daemon':
    ensure => absent
  }
}

