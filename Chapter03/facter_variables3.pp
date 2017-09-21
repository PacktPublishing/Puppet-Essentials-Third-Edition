file { '/etc/my-secret':
  ensure => 'file',
  mode   => '0600',
  owner  => 'root',
  source => "puppet:///modules/secrets/${::clientcert}/key",
}

