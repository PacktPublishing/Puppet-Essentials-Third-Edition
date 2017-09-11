file { '/etc/mysql/conf.d/bind-address':
  ensure  => 'file',
  mode    => '0644',
  content => "[mysqld]\nbind-address=${::networking['ip']}\n",
}

