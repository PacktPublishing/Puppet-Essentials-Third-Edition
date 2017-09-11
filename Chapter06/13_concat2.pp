concat::fragment { 'ssh_config header':
  target  => 'ssh config',
  content => "# Managed by Pupept\n",
  order   => '01',
}
concat::fragment { 'default host':
  target => 'ssh config',
  source => 'puppet:///modules/<modulename>/ssh_config_default host',
  order  => '10',
}

