ini_setting { 'puppet_ca_server':
  path    => '/etc/puppet/puppet.conf',
  section => 'agent',
  setting => 'ca_server',
  value   => 'puppet4.example.net'
}

