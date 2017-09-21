service { 'puppet':
  ensure   => 'stopped',
  enable   => false,
  provider => 'upstart',
}

