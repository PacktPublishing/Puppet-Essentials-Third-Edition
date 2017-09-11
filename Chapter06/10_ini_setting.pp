ini_setting { 'puppet agent report':
  ensure  => present,
  path    => '/etc/puppetlabs/puppet/puppet.conf',
  section => 'agent',
  setting => 'report',
  value   => 'true',
}

