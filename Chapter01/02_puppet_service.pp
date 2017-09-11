# puppet_service.pp
service { 'puppet':
  ensure => 'stopped',
  enable => false,
}

