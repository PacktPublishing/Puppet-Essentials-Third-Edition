file { '/var/lib/apache2/sample-module/data01.bin':
  source => '...',
  notify => Class['apache'],
}
service { 'apache-logwatch':
  enable    => true,
  subscribe => Class['apache'],
}

