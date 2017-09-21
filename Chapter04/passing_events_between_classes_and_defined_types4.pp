file { '/etc/example_app/main.conf':
  source => '...',
  notify => Protected_service['example-app'],
}

