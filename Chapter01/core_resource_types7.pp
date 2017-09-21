exec { 'tar cjf /opt/packages/homebrewn-3.2.tar.bz2':
  cwd     => '/opt',
  path    => '/bin:/usr/bin',
  creates => '/opt/homebrewn-3.2',
}

