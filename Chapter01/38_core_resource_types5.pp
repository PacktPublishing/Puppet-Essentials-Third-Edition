service { 'count-logins':
  provider    => 'base',
  ensure      => 'running',
  enable      => true,
  binary      => '/usr/local/bin/cnt-logins',
  start       => '/usr/local/bin/cnt-logins –daemonize',
  has_status  => true,
  has_restart => true,
  subscribe   => File['/usr/local/bin/cnt-logins'],
}
