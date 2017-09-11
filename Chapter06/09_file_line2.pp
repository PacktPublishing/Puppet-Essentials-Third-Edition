file { '/home/admin/.bashrc':
  ensure => file,
  owner  => 'admin',
  group  => 'admin',
  mode   => '0644',
}

