virtual_host { 'example.net':
  content => file('apache/vhosts/example.net'),
}
virtual_host{ 'fallback':
  priority => '999',
  content  => file('apache/vhosts/fallback'),
}
