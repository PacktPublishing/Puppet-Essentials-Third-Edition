case $role {
  'imap_server': {
    package { 'dovecot': ensure => 'installed' }
    service { 'dovecot': ensure => 'running' }
  }
  /_webserver$/: {
    service { [ 'apache', 'ssh' ]: ensure => 'running' }
  }
  default: {
    service { 'ssh': ensure => running }
  }
}

