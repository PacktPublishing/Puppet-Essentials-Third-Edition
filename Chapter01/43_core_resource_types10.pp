cron { 'clean-files':
  ensure      => present,
  user        => 'root',
  command     => '/usr/local/bin/clean-files',
  minute      => '1',
  hour        => '3',
  weekday     => [ '2', '6' ],
  environment => 'MAILTO=felix@example.net',
}

