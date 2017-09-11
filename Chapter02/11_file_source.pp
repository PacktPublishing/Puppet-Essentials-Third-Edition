file { '/usr/local/etc/my_app.ini':
  ensure => file,
  owner  => 'root',
  group  => 'root',
  source => 'puppet:///modules/my_app/usr/local/etc/my_app.ini',
}

