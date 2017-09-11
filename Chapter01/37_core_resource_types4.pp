package { 'haproxy':
  ensure   => present,
  provider => 'dpkg',
  source   => '/opt/packages/haproxy-1.5.1_amd64.dpkg',
}

