exec { 'apt-get update':
  path        => '/bin:/usr/bin',
  subscribe   => File['/etc/apt/sources.list.d/jenkins.list'],
  refreshonly => true,
}

