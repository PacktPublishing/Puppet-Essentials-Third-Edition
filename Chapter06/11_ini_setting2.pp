ini_setting { 'ssh config host default':
  ensure              => present,
  path                => '/etc/ssh/ssh_config',
  section             => 'Host *',
  section_prefix      => '',
  section_suffix      => '',
  key_value_separator => ' ',
  setting             => 'HashKnownHosts',
  value               => 'true',
}

