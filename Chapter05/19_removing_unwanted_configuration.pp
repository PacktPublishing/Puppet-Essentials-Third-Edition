file { '/usr/share/cacti/cli/remove_device.php':
  ensure  => file,
  mode    => '0755',
  source  => 'puppet:///modules/packt_cacti/usr/share/cacti/cli/remove_device.php',
  require => Package['cacti'],
}

