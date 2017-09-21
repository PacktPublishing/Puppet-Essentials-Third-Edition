file { '/etc/example_app/conf.d.enabled/england':
  ensure => 'link',
  target => '../conf.d.available/england',
}
file { '/etc/example_app/conf.d.enabled/ireland':
  ensure => 'link',
  target => '../conf.d.available/ireland',
}
file { '/etc/example_app/conf.d.enabled/germany':
  ensure => 'link',
  target => '../conf.d.available/germany',
  ...
}

