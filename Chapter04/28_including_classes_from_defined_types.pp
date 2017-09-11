file { [ '/etc/example_app', '/etc/example_app/config.d.enabled' ]:
  ensure => 'directory',
}
