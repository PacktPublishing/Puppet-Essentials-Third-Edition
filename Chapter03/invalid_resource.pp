cron { 'invalid-resource':
  command => 'apt-get update',
  special => 'midnight',
  weekday => [ '2', '5' ],
}
