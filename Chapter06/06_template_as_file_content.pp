file { '/etc/apache2/conf.d/cacti.conf':
  content => epp('cacti/apache/cacti.conf.epp'),
}
