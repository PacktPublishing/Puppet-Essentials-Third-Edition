Mysql_grant {
  options    => ['GRANT'],
  privileges => ['ALL'],
  tables     => '*.*',
}
mysql_grant { 'root':
  ensure => 'present',
  user   => 'root@localhost',
}
mysql_grant { 'apache':
  ensure => 'present',
  user   => 'apache@10.0.1.%',
  tables => 'application.*',
}
mysql_grant { 'wordpress':
  ensure => 'present',
  user   => 'wordpress@10.0.5.1',
  tables => 'wordpress.*',
}
mysql_grant { 'backup':
  ensure     => 'present',
  user       => 'backup@localhost',
  privileges => [ 'SELECT', 'LOCK TABLE' ],
}

