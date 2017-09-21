Hocon_setting {
  path   => '/etc/puppetlabs/puppetserver/conf.d/metrics.conf',
  notify => Service['puppetserver'],
}
hocon_setting {'server metrics server-id':
  ensure  => present,
  setting => 'metrics.server-id',
  value   => 'localhost',
}
hocon_setting {'server metrics reporters graphite':
  ensure  => present,
  setting => 'metrics.registries.puppetserver.reporters.graphite.enabled',
  value   => true,
}
hocon_setting {'server metrics graphite host':
  ensure  => present,
  setting => 'metrics.reporters.graphite.host',
  value   => $graphite_server,
}
hocon_setting {'server metrics graphite port':
  ensure  => present,
  setting => 'metrics.reporters.graphite.port',
  value   => 2003,
}
hocon_setting {'server metrics graphite update interval':
  ensure  => present,
  setting => 'metrics.reporters.graphite.update-interval-seconds',
  value   => 5,
}

