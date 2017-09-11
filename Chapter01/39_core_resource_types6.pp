group { 'proxy-admins':
  ensure => present,
  gid    => 4002,
}
user { 'john':
  ensure     => present,
  uid        => 2014,
  home       => '/home/john',
  managehome => true, # <- adds -m to useradd
  gid        => 1000,
  shell      => '/bin/zsh',
  groups     => [ 'proxy-admins' ],
}
