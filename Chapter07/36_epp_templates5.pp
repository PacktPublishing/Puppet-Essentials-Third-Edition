file {'/etc/motd':
  ensure  => file,
  content => inline_epp("Welcome to <%= $::fqdn %>\n")
}

