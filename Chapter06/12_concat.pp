concat { 'ssh config':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
}

