service { 'puppet': enable => false, }
cron { 'puppet-agent-run':
  user    => 'root',
  command => 'puppet agent --no-daemonize --onetime --logdest=syslog',
  minute  => fqdn_rand(60),
  hour    => absent,
}

