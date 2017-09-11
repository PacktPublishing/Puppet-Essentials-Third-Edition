@@file { 'my-app-psk':
  ensure  => file,
  path    => '/etc/my-app/psk',
  content => 'nwNFgzsn9n3sDfnFANfoinaAEF',
  tag     => 'cluster02',
}

